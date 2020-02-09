<template lang="pug">
    canvas.canvas(ref="canvas")
</template>

<script lang="coffee">
    import * as BABYLON from 'babylonjs'
    export default {
        mounted: ->
            $('.overlay').css('transition', 'all 2.5s')
            $('.overlay').css('opacity', 0.7)

            canvas = @.$refs["canvas"]

            # Load the 3D engine
            engine = new (BABYLON.Engine)(canvas, true,
                preserveDrawingBuffer: true
                stencil: true)


            createScene = ->
# Create a basic BJS Scene object
                scene = new (BABYLON.Scene)(engine)

                # Set Stage to White
                scene.clearColor = new BABYLON.Color3.FromHexString("#ffbf00")

                # Create a FreeCamera, and set its position to {x: 0, y: 5, z: -10}
                camera = new (BABYLON.FreeCamera)('camera1', new (BABYLON.Vector3)(-5, 5, -10), scene)

                # Target the camera to scene origin
                camera.setTarget BABYLON.Vector3.Zero()

                # Attach the camera to the canvas
                camera.attachControl canvas, false

                # Create a basic light, aiming 0, 1, 0 - meaning, to the sky
                light = new (BABYLON.HemisphericLight)('light1', new (BABYLON.Vector3)(0, 1, 0), scene)
                light2 = new BABYLON.DirectionalLight("DirectionalLight", new BABYLON.Vector3(0, -1, 0), scene)


                # Scene Settings
                box_positions = [0, 1.5, -1.5, 3, -3, 4.5, -4.5, 6, -6, 7.5, -7.5]
                frameRate = 25
                animation_time = 30

                # Boxes Array
                boxes = []

                # Colors Array
                colors = []
                colors.push new BABYLON.Color3.FromHexString('#00bcf2')
                colors.push new BABYLON.Color3.FromHexString('#f5c647')
                colors.push new BABYLON.Color3.FromHexString('#9578b6')
                colors.push new BABYLON.Color3.FromHexString('#f06160')
                colors.push new BABYLON.Color3.FromHexString('#f06160')

                for x in box_positions
                    for y in box_positions
                        for z in box_positions

                            box = BABYLON.MeshBuilder.CreateBox("box_#{x}#{y}#{z}", {}, scene)
                            box.position = new BABYLON.Vector3(x, y, z)

                            x_animation = buildAnimation(x, "x","#{x}#{y}#{z}", frameRate)
                            scene.beginDirectAnimation(box, [x_animation], 0, animation_time * frameRate, true)

                            y_animation = buildAnimation(y, "y","#{x}#{y}#{z}", frameRate)
                            scene.beginDirectAnimation(box, [y_animation], 0, animation_time * frameRate, true)

                            z_animation = buildAnimation(z, "z","#{x}#{y}#{z}", frameRate)
                            scene.beginDirectAnimation(box, [z_animation], 0, animation_time * frameRate, true)

                            scale_animation = buildScaleAnimation(x, "z","#{x}#{y}#{z}", frameRate)
                            #scene.beginDirectAnimation(box, [scale_animation], 0, animation_time * frameRate, true)

                            scale_animation = buildScaleAnimation(y, "z","#{x}#{y}#{z}", frameRate)
                            #scene.beginDirectAnimation(box, [scale_animation], 0, animation_time * frameRate, true)

                            material = new BABYLON.StandardMaterial("material_#{x}#{y}#{z}", scene)
                            material.alpha = 0.85


                            # shuffling and picking a random color
                            shuffled_colors = shuffle(colors)
                            [...,picked_color] = shuffled_colors

                            material.diffuseColor = picked_color

                            box.material = material

                            boxes << box


                # Return the created scene
                scene


            # shuffles an array
            shuffle = (a) ->
                i = a.length
                while --i > 0
                    j = ~~(Math.random() * (i + 1)) # ~~ is a common optimization for Math.floor
                    t = a[j]
                    a[j] = a[i]
                    a[i] = t
                a

            buildAnimation = (position, axis, identifier,frameRate) ->
                animation = new BABYLON.Animation("box_position_#{axis}_#{identifier}_#{position}", "position.#{axis}", frameRate, BABYLON.Animation.ANIMATIONTYPE_FLOAT, BABYLON.Animation.ANIMATIONLOOPMODE_CONSTANT)

                range = Math.random() * (21.5 - 1.1) + 1.1

                keyFrames = []
                keyFrames.push
                    frame: 0
                    value: position * range / 2
                keyFrames.push
                    frame: frameRate  * 30
                    value: position * range

                animation.setKeys(keyFrames)
                animation

            buildScaleAnimation = (position, axis, identifier,frameRate) ->
                animation = new BABYLON.Animation("box_position_#{axis}_#{identifier}_#{position}", "scaling.#{axis}", frameRate, BABYLON.Animation.ANIMATIONTYPE_FLOAT, BABYLON.Animation.ANIMATIONLOOPMODE_CONSTANT)

                range = Math.random() * (21.5 - 1.1) + 1.1

                keyFrames = []
                keyFrames.push
                    frame: 0
                    value: position * range / 2
                keyFrames.push
                    frame: frameRate  * 30
                    value: position * range
                keyFrames.push
                    frame: 0
                    value: position * range / 2

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
