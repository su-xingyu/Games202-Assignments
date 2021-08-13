class PRTMaterial extends Material {

    constructor(color, vertexShader, fragmentShader) {

        super({

            'uPrecomputeL0': { type: 'precomputeL', value: 0},
            'uPrecomputeL1': { type: 'precomputeL', value: 1},
            'uPrecomputeL2': { type: 'precomputeL', value: 2},
            'uPrecomputeL3': { type: 'precomputeL', value: 3},
            'uPrecomputeL4': { type: 'precomputeL', value: 4},
            'uPrecomputeL5': { type: 'precomputeL', value: 5},
            'uPrecomputeL6': { type: 'precomputeL', value: 6},
            'uPrecomputeL7': { type: 'precomputeL', value: 7},
            'uPrecomputeL8': { type: 'precomputeL', value: 8},
            'uSampler': { type: 'texture', value: color },

        }, ['aPrecomputeLT'], vertexShader, fragmentShader, null);
    }
}

async function buildPRTMaterial(color, vertexPath, fragmentPath) {


    let vertexShader = await getShaderString(vertexPath);
    let fragmentShader = await getShaderString(fragmentPath);

    return new PRTMaterial(color, vertexShader, fragmentShader);

}