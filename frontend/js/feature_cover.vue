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
                        Material(:diffuse="pick_color(x,y,z)" :roughness="0.30" :glossiness="2")
                        Animation(property="rotation.x" :duration="60" :end="Math.PI * 6.1" :loop="true")
                        Animation(property="rotation.z" :duration="60" :end="Math.PI * 6.1" :loop="true")
                        Animation(property="scaling.x" :duration="50" :start="2.2" :end="Math.PI * 2.3" :loop="true")
                        Animation(property="scaling.y" :duration="50" :start="2.2" :end="Math.PI * 2.3" :loop="true")
                        Animation(property="scaling.z" :duration="50" :start="2.2" :end="Math.PI * 2.3" :loop="true")

</template>

<script lang="coffee">
export default {
    data: ->
        background: '#fff'
        hemispheric_light: '#fff'
        hemispheric_specular_light: '#000'
        point_light: '#000'
        square_color: "#000"
        squares: [0, 2, -2 ]
        first_color: '#0E6EB8'
        second_color: '#0E6EB8'
        third_color: '#0E6EB8'
        fourth_color: '#0E6EB8'
        fifth_color: '#0E6EB8'
        sixth_color: '#0E6EB8'
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
