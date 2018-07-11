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
         padding: 10px 20px;
         font-family: "Futura";
         font-size: 12px;
         color: lighten(#273340, 15%);
         letter-spacing: 0.15px;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);

         &:hover {
            background-color: rgba(249, 249, 249, 1);
         }

         &[active] {
            color: #E6E6E6;
            background-color: lighten(#273340, 5%);
            text-shadow: none;
         }
      }
   }
</style>