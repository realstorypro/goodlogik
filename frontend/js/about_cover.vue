<template lang="pug">
    Scene
        Property(name="clearColor" :color="background")
        Camera(type="arcRotate" :radius="1")
        HemisphericLight(:diffuse="hemispheric_light")
        Entity(:position="[0, 0, 5]")
            PointLight(:diffuse="point_light")
            template(v-for="x in squares")
                template(v-for="y in squares")
                    template(v-if="x != 0 && y == 0")
                        Box(v-for="z in squares" :position="[x, y, z]" :key="`${x},${y},${z}`")
                            Material(:diffuse="pick_color(x,y,z)" :roughness="0.50" :glossiness="1")
                            Animation(property="scaling.z" :duration="60" :start="1.2" :end="Math.PI * 1.3" :loop="false")

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
        first_color: '#fff'
        second_color: '#fff'
        third_color: '#fff'
        fourth_color: '#fff'
        fifth_color: '#fff'
        sixth_color: '#fff'
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
