<template lang="jade">
   .SideLv2
      .item(v-for="(item, i) in items", :key="i")
         .hint(v-if="isHint(item)") {{ item }}
         nuxt-link.func(v-else :to="getTo(item)", :is-current-func="isCurrentFunc(item)") {{ item.name }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'items':
            type: Array
            default: -> []

         'func':
            type: Object
            default: null

      methods:
         isHint: ( item ) ->
            return typeof(item) is 'string'

         isCurrentFunc: ( func ) ->
            return @func and @func.name is func.name

         getTo: ( func ) ->
            return { path: '/' + func.name, query: @$route.query }
</script>



<style lang="less">
   .SideLv2 {
      .func {
         &[is-current-func] {
            background-color: blue;
         }
      }
   }
</style>