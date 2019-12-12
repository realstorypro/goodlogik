<template lang="pug">
    Scene
        Property(name="clearColor" :color="background")
        Camera(type="arcRotate" :radius="1")
        HemisphericLight(:diffuse="hemispheric_light")
        Entity(:position="[0, 0, 5]")
            PointLight(:diffuse="point_light")
            template(v-for="x in squares")
                template(v-for="y in squares")
                    Box(v-for="z in squares" :position="[x, y, z]" :key="`${x},${y},${z}`")
                        Material(:diffuse="pick_color(x,y,z)" :roughness="0.50")
                        Animation(property="rotation.x" :duration="8" :end="Math.PI * 1.9" :loop="true")
                        Animation(property="rotation.y" :duration="8" :end="Math.PI * 1.9" :loop="true")
                        Animation(property="rotation.z" :duration="8" :end="Math.PI * 1.9" :loop="true")
                        Animation(property="scaling.x" :duration="1" :start="1.9" :end="2.1" :loop="false")
                        Animation(property="scaling.y" :duration="1" :start="1.9" :end="2.1" :loop="false")
                        Animation(property="scaling.z" :duration="1" :start="1.9" :end="2.1" :loop="false")

</template>

<script lang="coffee">
export default {
    data: ->
        background: '#fff'
        hemispheric_light: '#fff'
        hemispheric_specular_light: '#000'
        point_light: '#fff'
        square_color: "#000"
        squares: [0, 2, -2 ]
        first_color: '#00b7eb'
        second_color: '#00b7eb'
        third_color: '#00b7eb'
        fourth_color: '#00b7eb'
        fifth_color: '#00b7eb'
        sixth_color: '#00b7eb'
    mounted: ->
        $('.overlay').css('opacity', 0.1)
    methods:
        pick_color: (x, y, z) ->



            if x is -2 and y is 2
                @sixth_color
            else if x is 0 and y is 2
                @first_color
            else if x is 2 and y is 2
                @sixth_color

            else if x is -2 and y is 0
                @fifth_color
            else if x is 0 and y is 0
                @fourth_color
            else if x is 2 and y is 0
                @fifth_color


            else if x is 2 and y is -2
                @fourth_color
            else if x is 0 and y is -2
                @third_color
            else if x is -2 and y is -2
                @fourth_color

}
</script>

<style lang="sass">
    canvas
        height: 100vh
</style>
