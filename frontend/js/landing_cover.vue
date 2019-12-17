<template lang="pug">
    Scene
        Property(name="clearColor" :color="background")
        Camera(type="arcRotate" :radius="1")
        HemisphericLight(:diffuse="hemispheric_light")
        Entity(:position="[0, 0, 5]")
            Animation(property="rotation.x" :duration="35" :end="Math.PI * 4.0" :loop="true")
            PointLight(:diffuse="point_light")
            template(v-for="x in squares")
                template(v-for="y in squares")
                    Box(v-for="z in squares" :position="[x, y, z]" :key="`${x},${y},${z}`")
                        Material(:diffuse="pick_color(x,y,z)" :roughness="0.42")
                        Animation(property="rotation.x" :from="50" :duration="9" :end="-Math.PI * 2" :loop="false")
                        Animation(property="rotation.y" :from="100" :duration="5" :end="-Math.PI * 2" :loop="false")
                        Animation(property="rotation.z" :from="150" :duration="6" :end="Math.PI * 2" :loop="false")
                        Animation(property="scaling.x" :duration="10" :start="0.5" :end="Math.PI * 0.59" :loop="false")
                        Animation(property="scaling.y" :duration="10" :start="0.5" :end="Math.PI * 0.59" :loop="false")
                        Animation(property="scaling.z" :duration="10" :start="0.5" :end="Math.PI * 0.59" :loop="false")

</template>

<script lang="coffee">
export default {
    data: ->
        background: '#999'
        hemispheric_light: '#fff'
        hemispheric_specular_light: '#000'
        point_light: '#fff'
        square_color: "#000"
        squares: [0, 2, -2 ]
        first_color: '#9c91ff'
        second_color: '#ffab1d'
        third_color: '#ffe908'
        fourth_color: '#00d8ff'
        fifth_color: '#ff1873'
        sixth_color: '#0fff7a'
    mounted: ->
        $('.overlay').css('transition', 'all 2.5s')
        $('.overlay').css('opacity', 0.1)

    beforeDestroy: ->
        $('.overlay').css('transition', 'none')
        $('.overlay').css('opacity', 1)

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
