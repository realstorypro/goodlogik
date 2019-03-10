<template lang="pug">
    Scene
        Property(name="clearColor" :color="background")
        Entity
            Camera(type="arcRotate" :radius="1")
        HemisphericLight(:diffuse="hemispheric_light")
        Entity(:position="[0, 0, 5]")
            Animation(property="rotation.x" :duration="10" :end="Math.PI * 2")
            Animation(property="rotation.y" :duration="15" :end="Math.PI * 2")
            Animation(property="rotation.z" :duration="20" :end="Math.PI * 2")
            PointLight(:diffuse="point_light")
            template(v-for="x in squares")
                template(v-for="y in squares")
                    Box(v-for="z in squares" :position="[x, y, z]" :key="`${x},${y},${z}`")
                        Material(:diffuse="pick_color(x,y,z)" :metalic="50" :roughness="1")
                        Animation(property="rotation.x" :duration="200" :end="Math.PI * 2")
                        Animation(property="rotation.y" :duration="150" :end="Math.PI * 2")
                        Animation(property="rotation.z" :duration="50" :end="Math.PI * 2")
</template>

<script lang="coffee">
export default {
    data: ->
        background: '#fff'
        hemispheric_light: '#eeeeee'
        point_light: '#000000'
        square_color: "#000"
        squares: [0, 2, -2 ]
        colors: ['blue', 'orange', 'yellow', 'black',
            'yellow', 'purple', 'blue', 'orange',
            'orange', 'blue', 'purple', 'yellow',
            'orange', 'purple', 'blue', 'yellow'
        ]
        first_color: '#655da6'
        second_color: '#f8a61d'
        third_color: '#fce608'
        fourth_color: '#00b4d5'
        fifth_color: '#ea176a'
        sixth_color: '#0aa650'
    mounted: ->
        console.log "mounting complete"
    methods:
        pick_color: (x, y, z)->

            if x is 0 and y is 2
                @second_color
            else if x is 2 and y is 2
                @first_color
            else if x is -2 and y is 2
                @third_color

            else if x is 0 and y is 0
                @fourth_color
            else if x is 2 and y is 0
                @first_color
            else if x is -2 and y is 0
                @third_color


            else if x is 0 and y is -2
                @fifth_color
            else if x is 2 and y is -2
                @fourth_color
            else if x is -2 and y is -2
                @sixth_color

}
</script>

<style lang="sass">
    canvas
        height: 100vh
</style>
