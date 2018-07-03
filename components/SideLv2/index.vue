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
      width: 240px;
      overflow: scroll;
      padding: 20px 0;

      .item {
         > a {
            display: block;
            padding: 10px 16px;
            font-family: "Ubuntu";
            font-size: 14px;
            color: #445669;

            &:hover {
               background-color: #F6F6F6;
            }

            &[is-current-func] {
               font-weight: 500;
               color: white;
               background-color: #273340;
            }
         }
      }
   }
</style>