<template lang="jade">
   nuxt-link.PackItem(:to="to('/@' + path)", :active="active") {{ name }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'pack':
            type: Object
            required: true

         'active':
            type: Boolean
            default: false

      computed:
         name: -> @pack.name
         path: -> @pack.path
</script>



<style lang="less">
   .SideLv1 {
      .PackItem {
         display: block;
         padding: 11px 20px;
         text-align: center;
         font-weight: 600;
         font-size: 14px;
         color: #F2F2F2;

         &:hover,
         &[active] {
            color: #272E3D;
            background-color: white;
         }
      }
   }
</style>