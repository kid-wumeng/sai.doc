<template lang="jade">
   .Side2
      .methods side2
         //- nuxt-link.unit(v-for="unit in units", :key="unit.name", :to="getTo(unit)") {{ unit.name }}
</template>



<script lang="coffee">
   module.exports =
      
      computed:
         doc: -> @$store.state.doc

      methods:
         getTo: ( unit ) ->
            return
               path: '/' + unit.path
               query: @$route.query
</script>



<style lang="less">
   .Side2 {
   }
</style>