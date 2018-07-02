<template lang="jade">
   .SideLv1
      nuxt-link.unit(v-for="unit in units", :key="unit.name", :to="getTo(unit)") {{ unit.name }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'units':
            type: Array
            default: -> []


      methods:
         getTo: ( unit ) ->
            return { path: '/_' + unit.path, query: @$route.query }
</script>



<style lang="less">
   .SideLv1 {
   }
</style>