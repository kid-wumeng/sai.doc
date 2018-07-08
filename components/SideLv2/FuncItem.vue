<template lang="jade">
   nuxt-link.FuncItem(:to="to('/' + name)", :active="active") {{ name }}
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

         name: ->
            name = @func.name ? ''
            i = name.indexOf('@')

            if i > -1
               return name.slice(i)
            else
               return name
</script>



<style lang="less">
   .SideLv2 {
      .FuncItem {
         display: block;
         padding: 10px 20px;
         font-weight: 400;
         font-size: 14px;
         color: #273340;
         letter-spacing: 0.3px;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);

         &:hover {
            background-color: rgba(249, 249, 249, 1);
         }

         &[active] {
            background-color: rgba(249, 249, 249, 1);
         }
      }
   }
</style>