<template lang="pug">
    Scene
        Property name="clearColor" color="#FFF"
        Camera type="arcRotate"
        Entity(:position="[0, 0, 5]")
            Animation(property="rotation.x" :duration="25" :end="Math.PI * 2")
            Animation(property="rotation.y" :duration="25" :end="Math.PI * 2")
            Animation(property="rotation.z" :duration="25" :end="Math.PI * 2")
            PointLight(diffuse="#FFF")
            template(v-for="x in squares")
                template(v-for="y in squares")
                    Box(v-for="z in squares" :position="[x, y, z]" :key="`${x},${y},${z}`")
                        Animation(property="rotation.x" :duration="5" :end="Math.PI * 2")
                        Animation(property="rotation.y" :duration="5" :end="Math.PI * 2")
                        Animation(property="rotation.z" :duration="5" :end="Math.PI * 2")
</template>

<script lang="coffee">
export default {
    data: ->
        squares: [0, 2, -2 ]
}
</script>

<style lang="sass">
    canvas
        height: 100vh
</style>
