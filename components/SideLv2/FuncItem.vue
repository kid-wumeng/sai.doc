<template lang="jade">
   nuxt-link.FuncItem(:to="to('/' + name)", :active="active") {{ displayName }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'item':
            type: Object
            required: true

         'active':
            type: Boolean
            default: false

      computed:
         func: -> @item
         name: -> @func.name ? ''

         displayName: ->

            i = @name.indexOf('@')

            if i > -1
               return @name.slice(i)
            else
               return @name
</script>



<style lang="less">
   .SideLv2 {
      .FuncItem {
         display: block;
         padding: 11px 20px;
         font-weight: 400;
         font-size: 13px;
         color: lighten(#2A2833, 10%);
         letter-spacing: 0.1px;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);

         &:hover {
            background-color: rgba(248, 248, 248, 1);
         }

         &[active] {
            font-weight: 500;
            color: #F2F2F2;
            background-color: #2A2833;
            text-shadow: none;
         }
      }
   }
</style>