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
   .SideLv2 .FuncItem {
      display: block;
      padding: 12px 20px;
      font-weight: 400;
      font-size: 13px;
      color: lighten(#1D262F, 10%);
      letter-spacing: 0.1px;

      &:hover {
         background-color: rgba(248, 248, 248, 1);
      }

      &[active] {
         font-weight: 500;
         color: #FFF;
         background-color: #1D262F;
         text-shadow: none;
      }
   }
</style>