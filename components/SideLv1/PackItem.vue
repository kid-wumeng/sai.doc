<template lang="jade">
   nuxt-link.PackItem(:to="to('/@' + path)") {{ name }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'pack':
            type: Object
            required: true

      computed:
         name: -> @pack.name
         path: -> @pack.path
</script>



<style lang="less">
   .SideLv1 {
      .PackItem {
         display: block;
         padding: 10px 20px;
         text-align: center;
         font-weight: 500;
         font-size: 14px;
         color: #CCC;

         &:hover,
         &[active] {
            color: #272E3D;
            background-color: white;
         }
      }
   }
</style>