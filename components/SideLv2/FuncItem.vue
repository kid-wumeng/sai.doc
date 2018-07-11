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
         padding: 12px 20px;
         font-weight: 300;
         font-size: 12px;
         color: #273340;
         letter-spacing: 0.35px;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);

         &:hover {
            background-color: rgba(250, 250, 250, 1);
         }

         &[active] {
            font-weight: 500;
            color: #F2F2F2;
            background-color: lighten(#273340, 5%);
            text-shadow: none;
         }
      }
   }
</style>