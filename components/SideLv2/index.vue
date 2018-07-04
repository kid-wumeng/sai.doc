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
      overflow: scroll;
      padding: 20px 0;
      border-right: 1px solid rgba(0, 0, 0, 0.1);
      box-shadow: 1px 0 10px rgba(0, 0, 0, 0.1);

      .item {
         > .hint,
         > .func {
            display: block;
            padding: 10px 20px;
         }

         > .hint {
            text-align: center;
            font-weight: 600;
            font-size: 16px;
            color: lighten(#A2AEBA, 10%);
         }

         > .func {
            font-weight: 600;
            font-size: 14px;
            color: #272E3D;

            &:hover {
               background-color: rgba(249, 249, 249, 1);
            }

            &[is-current-func] {
               background-color: rgba(249, 249, 249, 1);
            }
         }
      }
   }
</style>