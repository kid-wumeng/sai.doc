<template lang="jade">
   .Side1
      nuxt-link.unit(v-for="unit in units", :key="unit.name", :to="getTo(unit)") {{ unit.name }}
</template>



<script lang="coffee">
   module.exports =

      computed:
         doc:   -> @$store.state.doc
         units: -> @$store.state.units

      methods:
         getTo: ( unit ) ->
            return
               path: '/_' + unit.path
               query: @$route.query
</script>



<style lang="less">
   .Side1 {
   }
</style>