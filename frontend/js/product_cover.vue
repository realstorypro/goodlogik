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

            # Create a FreeCamera, and set its position to {x: 0, y: 5, z: -10}
            camera = new (BABYLON.FreeCamera)('camera1', new (BABYLON.Vector3)(0, 5, -10), scene)

            # Target the camera to scene origin
            camera.setTarget BABYLON.Vector3.Zero()

            # Attach the camera to the canvas
            camera.attachControl canvas, false

            # Create a basic light, aiming 0, 1, 0 - meaning, to the sky
            light = new (BABYLON.HemisphericLight)('light1', new (BABYLON.Vector3)(0, 1, 0), scene)

            # Create a built-in "sphere" shape; its constructor takes 6 params: name, segment, diameter, scene, updatable, sideOrientation
            sphere = BABYLON.Mesh.CreateSphere('sphere1', 16, 2, scene, false, BABYLON.Mesh.FRONTSIDE)

            # Move the sphere upward 1/2 of its height
            sphere.position.y = 1

            # Create a built-in "ground" shape; its constructor takes 6 params : name, width, height, subdivision, scene, updatable
            ground = BABYLON.Mesh.CreateGround('ground1', 6, 6, 2, scene, false)

            # Return the created scene
            scene

        # call the createScene function
        scene = createScene()

        # run the render loop
        engine.runRenderLoop ->
            scene.render()


}
</script>

<style lang="sass">
</style>
