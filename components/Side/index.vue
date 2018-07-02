<template lang="jade">
   .Side
      .units
         nuxt-link.unit(v-for="unit in units", :key="unit.name", :to="getTo(unit)") {{ unit.name }}
</template>



<script lang="coffee">
   module.exports =
      computed:
         docs:        -> @$store.state.docs
         ver:         -> @$store.state.ver
         lang:        -> @$store.state.lang
         langDefault: -> @$store.state.langDefault

         doc:         -> @docs[@ver][@lang] ? @docs[@ver][@langDefault]
         units:       -> @doc.units

      methods:
         getTo: ( unit ) ->
            return
               path: '/' + unit.path
               query: @$route.query
</script>



<style lang="less">
   .Side {
   }
</style>