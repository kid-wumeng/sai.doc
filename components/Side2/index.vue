<template lang="jade">
   .Side2
      .item(v-for="(item, i) in items", :key="i")
         .hint(v-if="isHint(item)") {{ item }}
         nuxt-link.func(v-else :to="getTo(item)") {{ item.name }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'unitOrFunc':
            type: String
            required: true

      computed:
         doc:    -> @$store.state.doc
         units:  -> @$store.state.units
         funcs:  -> @$store.state.funcs

         isUnit: -> @unitOrFunc[0] is '_'

         name: ->
            if @isUnit
               @unitOrFunc.slice(1)
            else
               @unitOrFunc

         unit: -> @units[@name]
         func: -> @funcs[@name]

         items: ->
            if @isUnit
               if @unit
                  return @unit.items
            else
               if @func
                  return @func.unit.items

            return []


      methods:
         isHint: ( item ) ->
            return typeof(item) is 'string'

         getTo: ( func ) ->
            return
               path: '/' + func.name
               query: @$route.query
</script>



<style lang="less">
   .Side2 {
   }
</style>