<template lang="jade">
   .Func func
</template>



<script lang="coffee">
   module.exports =

      methods:
         getTo: ( unit ) ->
            return
               path: '/_' + unit.path
               query: @$route.query
</script>



<style lang="less">
   .Func {
   }
</style>