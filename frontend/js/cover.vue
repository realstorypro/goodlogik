<template lang="pug">
    Scene
        Property(name="clearColor" :color="background")
        Entity
            Camera(type="arcRotate" :radius="1")
        HemisphericLight(:diffuse="hemispheric_light")
        Entity(:position="[0, 0, 5]")
            Animation(property="rotation.x" :duration="15" :end="Math.PI * 2")
            Animation(property="rotation.y" :duration="15" :end="Math.PI * 2")
            Animation(property="rotation.z" :duration="15" :end="Math.PI * 2")
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
    mounted: ->
        console.log "mounting complete"
    methods:
        pick_color: (x, y, z)->

            if x is 0 and y is 2
                '#666'
            else if x is 2 and y is 2
                '#ccc'
            else if x is -2 and y is 2
                '#ddd'

            else if x is 0 and y is 0
                '#0aa650'
            else if x is 2 and y is 0
                '#fce608'
            else if x is -2 and y is 0
                '#0aa650'


            else if x is 0 and y is -2
                '#00b4d5'
            else if x is 2 and y is -2
                '#655da6'
            else if x is -2 and y is -2
                '#f8a61d'

}
</script>

<style lang="sass">
    canvas
        height: 100vh
</style>
