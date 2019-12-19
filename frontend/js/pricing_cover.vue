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
                # Create a basic BJS Scene object
                scene = new (BABYLON.Scene)(engine)

                # Set Stage to White
                scene.clearColor = new BABYLON.Color3.FromHexString("#FF1493")

                # Create a FreeCamera, and set its position to {x: 0, y: 5, z: -88}
                camera = new BABYLON.ArcRotateCamera("Camera", 1.0, 2.0, -8.3, new BABYLON.Vector3(0, 0, 0), scene);
                camera.useBouncingBehavior = true
                camera.useAutoRotationBehavior = true

                # Target the camera to scene origin
                camera.setTarget BABYLON.Vector3.Zero()

                # Attach the camera to the canvas
                camera.attachControl canvas, false

                # Create a basic light, aiming 0, 1, 0 - meaning, to the sky
                light = new (BABYLON.HemisphericLight)('light1', new (BABYLON.Vector3)(0, 1, 0), scene)


                # Scene Settings
                box_positions = [0, 1.5, -1.5]
                frameRate = 25
                animation_time = 45

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

            buildAnimation = (position, axis, identifier,frameRate, animation_time) ->
                animation = new BABYLON.Animation("box_position_#{axis}_#{identifier}_#{position}", "position.#{axis}", frameRate, BABYLON.Animation.ANIMATIONTYPE_FLOAT, BABYLON.Animation.ANIMATIONLOOPMODE_CYCLE)

                range = Math.random() * (1.2 - 1.1) + 1.1

                keyFrames = []
                keyFrames.push
                    frame: 0
                    value: position
                keyFrames.push
                    frame: frameRate * animation_time / 2
                    value: position * range
                keyFrames.push
                    frame: animation_time * frameRate
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
