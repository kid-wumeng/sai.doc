<template lang="jade">
   .Home home
</template>



<script lang="coffee">
   module.exports =
      methods:
         getTo: ( unit ) ->
            return { path: '/_' + unit.path, query: @$route.query }
</script>



<style lang="less">
   .Home {
   }
</style>