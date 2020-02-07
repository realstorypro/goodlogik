<template lang="pug">
    canvas.canvas(ref="canvas")
</template>

<script lang="coffee">
    import * as BABYLON from 'babylonjs'
    export default {
        mounted: ->
            $('.overlay').css('transition', 'all 2.5s')
            $('.overlay').css('opacity', 0.29)

            canvas = @.$refs["canvas"]

            # Load the 3D engine
            engine = new (BABYLON.Engine)(canvas, true,
                preserveDrawingBuffer: true
                stencil: true)


            createScene = ->
                scene = new (BABYLON.Scene)(engine)

                # Set Stage to White
                scene.clearColor = new BABYLON.Color3.FromHexString("#2185D0")

                # Create a Rotating Camera
                camera = new (BABYLON.ArcRotateCamera)('Camera', 0, Math.PI / 2, 6, BABYLON.Vector3.Zero(), scene)
                camera.attachControl canvas, false
                camera.lowerRadiusLimit = 1
                camera.minZ = 1.0

                # Attach the camera to the canvas
                camera.attachControl canvas, false

                # Create a basic light, aiming 0, 1, 0 - meaning, to the sky
                #light = new (BABYLON.HemisphericLight)('light1', new (BABYLON.Vector3)(0, 1, 0), scene)

                BABYLON.Effect.ShadersStore['customVertexShader'] = 'precision highp float;\u000d\n' + '// Attributes\u000d\n' + 'attribute vec3 position;\u000d\n' + 'attribute vec3 normal;\u000d\n' + 'attribute vec2 uv;\u000d\n' + '// Uniforms\u000d\n' + 'uniform mat4 worldViewProjection;\u000d\n' + '// Varying\u000d\n' + 'varying vec4 vPosition;\u000d\n' + 'varying vec3 vNormal;\u000d\n' + 'void main() {\u000d\n' + '    vec4 p =  vec4( position, 1. );\u000d\n' + '    vPosition = p;\u000d\n' + '    vNormal = normal;\u000d\n' + '    gl_Position = worldViewProjection * p;\u000d\n' + '}\u000d\n'
                BABYLON.Effect.ShadersStore['customFragmentShader'] = 'precision highp float;\u000d\n' + 'uniform mat4 worldView;\u000d\n' + 'varying vec4 vPosition;\u000d\n' + 'varying vec3 vNormal;\u000d\n' + 'uniform sampler2D textureSampler;\u000d\n' + 'uniform sampler2D refSampler;\u000d\n' + 'uniform vec3 iResolution;\u000d\n' + 'const float tau = 6.28318530717958647692;\u000d\n' + '// Gamma correction\u000d\n' + '#define GAMMA (2.2)\u000d\n' + 'vec3 ToLinear( in vec3 col )\u000d\n' + '{\u000d\n' + '\u0009// simulate a monitor, converting colour values into light values\u000d\n' + '\u0009return pow( col, vec3(GAMMA) );\u000d\n' + '}\u000d\n' + 'vec3 ToGamma( in vec3 col )\u000d\n' + '{\u000d\n' + '\u0009// convert back into colour values, so the correct light will come out of the monitor\u000d\n' + '\u0009return pow( col, vec3(1.0/GAMMA) );\u000d\n' + '}\u000d\n' + 'vec4 Noise( in ivec2 x )\u000d\n' + '{\u000d\n' + '\u0009return texture2D( refSampler, (vec2(x)+0.5)/256.0, -100.0 );\u000d\n' + '}\u000d\n' + 'vec4 Rand( in int x )\u000d\n' + '{\u000d\n' + '\u0009vec2 uv;\u000d\n' + '\u0009uv.x = (float(x)+0.5)/256.0;\u000d\n' + '\u0009uv.y = (floor(uv.x)+0.5)/256.0;\u000d\n' + '\u0009return texture2D( refSampler, uv, -100.0 );\u000d\n' + '}\u000d\n' + 'uniform float time;\u000d\n' + 'void main(void) {\u000d\n' + '    vec3 ray;\u000d\n' + '\u0009ray.xy = .2*(vPosition.xy-vec2(.5));\u000d\n' + '\u0009ray.z = 1.;\u000d\n' + '\u0009float offset = time*.5;\u0009\u000d\n' + '\u0009float speed2 = (cos(offset)+1.0)*2.0;\u000d\n' + '\u0009float speed = speed2+.1;\u000d\n' + '\u0009offset += sin(offset)*.96;\u000d\n' + '\u0009offset *= 2.0;\u000d\n' + '\u0009\u000d\n' + '\u0009\u000d\n' + '\u0009vec3 col = vec3(0.);\u000d\n' + '\u0009\u000d\n' + '\u0009vec3 stp = ray/max(abs(ray.x),abs(ray.y));\u000d\n' + '\u0009\u000d\n' + '\u0009vec3 pos = 2.0*stp+.5;\u000d\n' + '\u0009for ( int i=0; i < 20; i++ )\u000d\n' + '\u0009{\u000d\n' + '\u0009\u0009float z = Noise(ivec2(pos.xy)).x;\u000d\n' + '\u0009\u0009z = fract(z-offset);\u000d\n' + '\u0009\u0009float d = 50.0*z-pos.z;\u000d\n' + '\u0009\u0009float w = pow(max(0.0,1.0-8.0*length(fract(pos.xy)-.5)),2.0);\u000d\n' + '\u0009\u0009vec3 c = max(vec3(0),vec3(1.0-abs(d+speed2*.5)/speed,1.0-abs(d)/speed,1.0-abs(d-speed2*.5)/speed));\u000d\n' + '\u0009\u0009col += 1.5*(1.0-z)*c*w;\u000d\n' + '\u0009\u0009pos += stp;\u000d\n' + '\u0009}\u000d\n' + '\u0009\u000d\n' + '\u0009gl_FragColor = vec4(ToGamma(col),1.);\u000d\n' + '}\u000d\n'
                shaderMaterial = new (BABYLON.ShaderMaterial)('shader', scene, {
                    vertex: 'custom'
                    fragment: 'custom'
                },
                    attributes: [
                        'position'
                        'normal'
                        'uv'
                    ]
                    uniforms: [
                        'world'
                        'worldView'
                        'worldViewProjection'
                        'view'
                        'projection'
                    ])
                mesh = BABYLON.Mesh.CreatePlane('mesh', 10.0, scene)
                mesh.rotate BABYLON.Axis.Y, Math.PI * .5
                refTexture = new (BABYLON.Texture)('http://i.imgur.com/HP1V7TJ.png', scene)
                shaderMaterial.setTexture 'refSampler', refTexture
                shaderMaterial.setFloat 'time', 0
                shaderMaterial.setVector3 'cameraPosition', BABYLON.Vector3.Zero()
                shaderMaterial.backFaceCulling = false
                mesh.material = shaderMaterial
                time = 0
                scene.registerBeforeRender ->
                    shaderMaterial.setFloat 'time', time
                    time += 0.02
                    shaderMaterial.setVector3 'cameraPosition', scene.activeCamera.position


                # Return the created scene
                scene

            # call the createScene function
            scene = createScene()

            # run the render loop
            engine.runRenderLoop ->
                scene.render()

            # the canvas/window resize event handler
            window.addEventListener 'resize', ->
                engine.resize()


    }
</script>

<style lang="sass">
</style>
