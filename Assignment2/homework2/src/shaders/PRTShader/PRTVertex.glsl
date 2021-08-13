attribute vec3 aVertexPosition;
attribute mat3 aPrecomputeLT;

uniform mat4 uModelMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uProjectionMatrix;

uniform vec3 uPrecomputeL0;
uniform vec3 uPrecomputeL1;
uniform vec3 uPrecomputeL2;
uniform vec3 uPrecomputeL3;
uniform vec3 uPrecomputeL4;
uniform vec3 uPrecomputeL5;
uniform vec3 uPrecomputeL6;
uniform vec3 uPrecomputeL7;
uniform vec3 uPrecomputeL8;

varying highp vec4 vColor;

void main() {

    gl_Position = uProjectionMatrix * uViewMatrix * uModelMatrix * vec4(aVertexPosition, 1.0);

    vColor =vec4(
        uPrecomputeL0 * aPrecomputeLT[0][0] + uPrecomputeL1 * aPrecomputeLT[0][1] + uPrecomputeL2 * aPrecomputeLT[0][2] +
        uPrecomputeL3 * aPrecomputeLT[1][0] + uPrecomputeL4 * aPrecomputeLT[1][1] + uPrecomputeL5 * aPrecomputeLT[1][2] +
        uPrecomputeL6 * aPrecomputeLT[2][0] + uPrecomputeL7 * aPrecomputeLT[2][1] + uPrecomputeL8 * aPrecomputeLT[2][2],
        1.0
    );

}