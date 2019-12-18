<template lang="pug">
    canvas.canvas(ref="canvas")
</template>

<script lang="coffee">
    import * as BABYLON from 'babylonjs'
    export default {
        mounted: ->
            $('.overlay').css('transition', 'all 2.5s')
            $('.overlay').css('opacity', 0.8)

            canvas = @.$refs["canvas"]

            # Load the 3D engine
            engine = new (BABYLON.Engine)(canvas, true,
                preserveDrawingBuffer: true
                stencil: true)


            createScene = ->
# Create a basic BJS Scene object
                scene = new (BABYLON.Scene)(engine)

                # Set Stage to White
                scene.clearColor = new BABYLON.Color3.Blue()

                # Create a FreeCamera, and set its position to {x: 0, y: 5, z: -10}
                camera = new (BABYLON.FreeCamera)('camera1', new (BABYLON.Vector3)(0, 5, -10), scene)

                # Target the camera to scene origin
                camera.setTarget BABYLON.Vector3.Zero()

                # Attach the camera to the canvas
                camera.attachControl canvas, false

                # Create a basic light, aiming 0, 1, 0 - meaning, to the sky
                light = new (BABYLON.HemisphericLight)('light1', new (BABYLON.Vector3)(0, 1, 0), scene)


                # Scene Settings
                box_positions = [0, 1.5, -1.5]
                frameRate = 25

                # Boxes Array
                boxes = []

                for x in box_positions
                    for y in box_positions
                        for z in box_positions

                            box = BABYLON.MeshBuilder.CreateBox("box_#{x}#{y}#{z}", {}, scene)
                            box.position = new BABYLON.Vector3(x, y, z)

                            x_animation = buildAnimation(x, "x","#{x}#{y}#{z}", frameRate)
                            scene.beginDirectAnimation(box, [x_animation], 0, 2 * frameRate, true)

                            y_animation = buildAnimation(y, "y","#{x}#{y}#{z}", frameRate)
                            scene.beginDirectAnimation(box, [y_animation], 0, 2 * frameRate, true)

                            z_animation = buildAnimation(z, "z","#{x}#{y}#{z}", frameRate)
                            scene.beginDirectAnimation(box, [z_animation], 0, 2 * frameRate, true)

                            boxes << box


                # Return the created scene
                scene

            buildAnimation = (position, axis, identifier,frameRate) ->
                animation = new BABYLON.Animation("box_position_#{axis}_#{identifier}_#{position}", "position.#{axis}", frameRate, BABYLON.Animation.ANIMATIONTYPE_FLOAT, BABYLON.Animation.ANIMATIONLOOPMODE_CYCLE)

                range = Math.random() * (1.2 - 1.1) + 1.1

                keyFrames = []
                keyFrames.push
                    frame: 0
                    value: position
                keyFrames.push
                    frame: frameRate
                    value: position * range
                keyFrames.push
                    frame: 2 * frameRate
                    value: position

                animation.setKeys(keyFrames)
                animation

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
