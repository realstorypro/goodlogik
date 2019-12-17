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
                        Material(:diffuse="pick_color(x,y,z)" :roughness="0.30" :glossiness="1")
                        Animation(property="scaling.z" :duration="5" :start="0.1" :end="0.2" :loop="false")

</template>

<script lang="coffee">
export default {
    data: ->
        background: '#fff'
        hemispheric_light: '#016936'
        hemispheric_specular_light: '#016936'
        point_light: '#016936'
        square_color: "#000"
        squares: [0, 1.5, -1.5, 3.0, -3.0 ]
        first_color: '#016936'
        second_color: '#016936'
        third_color: '#016936'
        fourth_color: '#EE82EE'
        fifth_color: '#016936'
        sixth_color: '#016936'
    mounted: ->
        $('.overlay').css('transition', 'all 2.5s')
        $('.overlay').css('opacity', 0.4)
    beforeDestroy: ->
        $('.overlay').css('transition', 'none')
        $('.overlay').css('opacity', 0.4)
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
