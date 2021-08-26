#include "denoiser.h"

Denoiser::Denoiser() : m_useTemportal(false) {}

void Denoiser::Reprojection(const FrameInfo &frameInfo) {
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    Matrix4x4 preWorldToScreen =
        m_preFrameInfo.m_matrix[m_preFrameInfo.m_matrix.size() - 1];
    Matrix4x4 preWorldToCamera =
        m_preFrameInfo.m_matrix[m_preFrameInfo.m_matrix.size() - 2];
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            // TODO: Reproject
            int cur_id = frameInfo.m_id(x, y);
            if (cur_id == -1) {
                m_valid(x, y) = false;
                m_misc(x, y) = Float3(0.f);
                continue;
            }
            Float3 cur_world = frameInfo.m_position(x, y);
            
            Matrix4x4 to_pre_screen = preWorldToScreen * m_preFrameInfo.m_matrix[cur_id] * Inverse(frameInfo.m_matrix[cur_id]);
            Float3 pre_screen = to_pre_screen(cur_world, Float3::Point);

            int pre_x = pre_screen.x, pre_y = pre_screen.y;
            if (pre_x < 0 || pre_y < 0 || pre_x >= width || pre_y >= height) {
                m_valid(x, y) = false;
                m_misc(x, y) = Float3(0.f);
                continue;
            }

            int pre_id = m_preFrameInfo.m_id(pre_x, pre_y);
            if (pre_id != cur_id) {
                m_valid(x, y) = false;
                m_misc(x, y) = Float3(0.f);
                continue;
            }

            m_valid(x, y) = true;
            m_misc(x, y) = m_accColor(pre_x, pre_y);
        }
    }
    std::swap(m_misc, m_accColor);
}

void Denoiser::TemporalAccumulation(const Buffer2D<Float3> &curFilteredColor) {
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    int kernelRadius = 3;
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            // TODO: Temporal clamp
            Float3 color = m_accColor(x, y);
            float alpha = 1.0f;

            if (m_valid(x, y)) {
                alpha = m_alpha;

                Float3 sum = Float3(0);
                float count = 0.0;
                for (int j = -kernelRadius; j <= kernelRadius; j++) {

                    int y_j = y + j;
                    if (y_j < 0) {
                        continue;
                    }
                    else if (y_j >= height) {
                        break;
                    }

                    for (int i = -kernelRadius; i <= kernelRadius; i++) {

                        int x_i = x + i;
                        if (x_i < 0) {
                            continue;
                        }
                        else if (x_i >= width) {
                            break;
                        }

                        if (m_valid(x_i, y_j)) {
                            sum += m_accColor(x_i, y_j);
                            count += 1.0;
                        }
                        
                    }
                
                }

                Float3 miu = sum / count;

                Float3 square_sum = Float3(0);
                for (int j = -kernelRadius; j <= kernelRadius; j++) {

                    int y_j = y + j;
                    if (y_j < 0) {
                        continue;
                    }
                    else if (y_j >= height) {
                        break;
                    }

                    for (int i = -kernelRadius; i <= kernelRadius; i++) {

                        int x_i = x + i;
                        if (x_i < 0) {
                            continue;
                        }
                        else if (x_i >= width) {
                            break;
                        }

                        if (m_valid(x_i, y_j)) {
                            square_sum += Sqr(m_accColor(x_i, y_j)-miu);
                        }
                    
                    }
                
                }

                Float3 sigma = SafeSqrt(square_sum/count);

                color = Clamp(m_accColor(x, y), miu-sigma*m_colorBoxK, miu+sigma*m_colorBoxK);

            }
            // TODO: Exponential moving average
            m_misc(x, y) = Lerp(color, curFilteredColor(x, y), alpha);
        }
    }
    std::swap(m_misc, m_accColor);
}

Buffer2D<Float3> Denoiser::Filter(const FrameInfo &frameInfo) {
    int height = frameInfo.m_beauty.m_height;
    int width = frameInfo.m_beauty.m_width;
    Buffer2D<Float3> filteredImage = CreateBuffer2D<Float3>(width, height);
    int kernelRadius = 16;
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            // TODO: Joint bilateral filter
            float weight = 0;
            Float3 weighted_sum = Float3(0);

            for (int j = -kernelRadius; j <= kernelRadius; j++) {

                int y_j = y + j;
                if (y_j < 0) {
                    continue;
                }
                else if (y_j >= height) {
                    break;
                }

                for (int i = -kernelRadius; i <= kernelRadius; i++) {

                    int x_i = x + i;
                    if (x_i < 0) {
                        continue;
                    }
                    else if (x_i >= width) {
                        break;
                    }

                    float index_coord = -(i*i+j*j) / (2*m_sigmaCoord);
                    float index_color = -SqrLength(frameInfo.m_beauty(x, y)-frameInfo.m_beauty(x_i, y_j)) / (2*m_sigmaColor);
                    float index_normal = -std::pow(std::acos(std::fabs(Dot(frameInfo.m_normal(x, y), frameInfo.m_normal(x_i, y_j)))), 2.0) / (2*m_sigmaNormal);
                    
                    Float3 Pi_to_Pj = frameInfo.m_position(x_i, y_j) - frameInfo.m_position(x, y);
                    Float3 Pi_to_Pj_unit;
                    if (Length(Pi_to_Pj) == 0) {
                        Pi_to_Pj_unit = Float3(0);
                    }
                    else {
                        Pi_to_Pj_unit = Normalize(Pi_to_Pj);
                    }
                    
                    float index_plane = -std::pow(Dot(frameInfo.m_normal(x, y), Pi_to_Pj_unit), 2.0) / (2*m_sigmaPlane);
                    
                    float weight_ij = std::exp(index_coord+index_color+index_normal+index_plane);
                    // float weight_ij = std::exp(index_coord);
                    weight += weight_ij;
                    weighted_sum += frameInfo.m_beauty(x_i, y_j) * weight_ij;

                }
            }

            filteredImage(x, y) = weighted_sum / weight;

        }
    }
    return filteredImage;
}

void Denoiser::Init(const FrameInfo &frameInfo, const Buffer2D<Float3> &filteredColor) {
    m_accColor.Copy(filteredColor);
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    m_misc = CreateBuffer2D<Float3>(width, height);
    m_valid = CreateBuffer2D<bool>(width, height);
}

void Denoiser::Maintain(const FrameInfo &frameInfo) { m_preFrameInfo = frameInfo; }

Buffer2D<Float3> Denoiser::ProcessFrame(const FrameInfo &frameInfo) {
    // Filter current frame
    Buffer2D<Float3> filteredColor;
    filteredColor = Filter(frameInfo);

    // Reproject previous frame color to current
    if (m_useTemportal) {
        Reprojection(frameInfo);
        TemporalAccumulation(filteredColor);
    } else {
        Init(frameInfo, filteredColor);
    }

    // Maintain
    Maintain(frameInfo);
    if (!m_useTemportal) {
        m_useTemportal = true;
    }
    return m_accColor;
}
