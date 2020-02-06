<template lang="pug">
    canvas.canvas(ref="canvas")
</template>

<script lang="coffee">
    import * as BABYLON from 'babylonjs'
    export default {
        mounted: ->
            $('.overlay').css('transition', 'all 2.5s')
            $('.overlay').css('opacity', 0.1)

            canvas = @.$refs["canvas"]

            # Load the 3D engine
            engine = new (BABYLON.Engine)(canvas, true,
                preserveDrawingBuffer: true
                stencil: true)


            createScene = ->
                # Create a basic BJS Scene object
                scene = new (BABYLON.Scene)(engine)

                # Set Stage to Black
                scene.clearColor = new BABYLON.Color3.FromHexString("#79cbff")

                # Create a FreeCamera, and set its position to {x: 0, y: 5, z: -10}
                camera = new (BABYLON.FreeCamera)('camera1', new (BABYLON.Vector3)(-1.7, 1.7, -1.7), scene)

                # Target the camera to scene origin
                camera.setTarget BABYLON.Vector3.Zero()

                # Attach the camera to the canvas
                camera.attachControl canvas, false

                # Create a basic light, aiming 0, 1, 0 - meaning, to the sky
                #light = new (BABYLON.HemisphericLight)('light1', new (BABYLON.Vector3)(5, 1, 0), scene)
                light2 = new BABYLON.DirectionalLight("DirectionalLight", new BABYLON.Vector3(190, -15, -1), scene)

                BABYLON.ParticleHelper.BaseAssetsUrl = window.location.origin

                BABYLON.ParticleHelper.CreateAsync('sun', scene ).then (set) ->
                    set.start()

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
