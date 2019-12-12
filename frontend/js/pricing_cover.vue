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
                        Material(:diffuse="pick_color(x,y,z)" :roughness="0.45" :glossiness="2")
                        Animation(property="rotation.x" :duration="40" :end="Math.PI * 3.1" :loop="true")
                        Animation(property="rotation.y" :duration="40" :end="Math.PI * 3.1" :loop="true")
                        Animation(property="rotation.z" :duration="40" :end="Math.PI * 3.1" :loop="true")
                        Animation(property="scaling.x" :duration="50" :start="1.9" :end="Math.PI * 1.3" :loop="false")
                        Animation(property="scaling.y" :duration="50" :start="1.9" :end="Math.PI * 1.3" :loop="false")
                        Animation(property="scaling.z" :duration="50" :start="1.9" :end="Math.PI * 1.3" :loop="false")

</template>

<script lang="coffee">
export default {
    data: ->
        background: '#fff'
        hemispheric_light: '#fff'
        hemispheric_specular_light: '#000'
        point_light: '#fff'
        square_color: "#000"
        squares: [0, 2, -2, 4, -4 ]
        first_color: '#016936'
        second_color: '#016936'
        third_color: '#32CD32'
        fourth_color: '#016936'
        fifth_color: '#016936'
        sixth_color: '#016936'
    mounted: ->
        $('.overlay').css('transition', 'all 1.8s')
        $('.overlay').css('opacity', 0.05)

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
