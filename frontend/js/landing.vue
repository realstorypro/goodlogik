<template>
    <h1 >{{ hello }} World!</h1>
</template>

<script>
    module.exports = {
        data: function() {
            return {
                greeting: 'hello'
            }
        }
    }
</script>

<style scoped="">
    h1 {
        font-size: 5em;
        text-align: center;
    }
</style>