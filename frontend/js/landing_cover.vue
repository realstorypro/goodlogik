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
                scene.clearColor = new BABYLON.Color3.White()

                # Create a Rotating Camera
                camera = new BABYLON.ArcRotateCamera("Camera", 1.8, 1.9, -6.3, new BABYLON.Vector3(0, 0, 0), scene);
                camera.useAutoRotationBehavior = true
                camera.useBouncingBehavior = true

                # Target the camera to scene origin
                camera.setTarget BABYLON.Vector3.Zero()

                # Attach the camera to the canvas
                camera.attachControl canvas, false

                # Create a basic light, aiming 0, 1, 0 - meaning, to the sky
                light = new (BABYLON.HemisphericLight)('light1', new (BABYLON.Vector3)(0, 1, 0), scene)


                # Scene Settings
                box_positions = [0, 1.5, -1.5]
                frameRate = 25
                animation_time = 6

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

                            x_animation = buildAnimation(x, "x","#{x}#{y}#{z}", frameRate, animation_time)
                            scene.beginDirectAnimation(box, [x_animation], 0, animation_time * frameRate, false)

                            y_animation = buildAnimation(y, "y","#{x}#{y}#{z}", frameRate, animation_time)
                            scene.beginDirectAnimation(box, [y_animation], 0, animation_time * frameRate, false)

                            z_animation = buildAnimation(z, "z","#{x}#{y}#{z}", frameRate, animation_time)
                            scene.beginDirectAnimation(box, [z_animation], 0, animation_time * frameRate, false)

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
            # builds an animation
            buildAnimation = (position, axis, identifier,frameRate, animation_time) ->
                animation = new BABYLON.Animation("box_position_#{axis}_#{identifier}_#{position}", "position.#{axis}", frameRate, BABYLON.Animation.ANIMATIONTYPE_FLOAT, BABYLON.Animation.ANIMATIONLOOPMODE_CONSTANT)

                range = Math.random() * (3.60 - 1.10) + 1.10

                keyFrames = []
                keyFrames.push
                    frame: 0
                    value: position
                keyFrames.push
                    frame: frameRate * animation_time
                    value: position * range

                animation.setKeys(keyFrames)

                #easingFunction = new BABYLON.BackEase(0.7)
                easingFunction = new BABYLON.ElasticEase(11, 19.5)
                easingFunction.setEasingMode(BABYLON.EasingFunction.EASINGMODE_EASEINOUT)
                animation.setEasingFunction(easingFunction)

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
