<template lang="jade">
   nuxt-link.PackItem(:to="to('/@' + path)", :active="active")
      .name {{ name }}
      .path @{{ path }}
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
         padding: 14px 20px;

         .name {
            font-family: "Futura";
            font-weight: 500;
            font-size: 14px;
            color: #D2CDE5;
         }
         .path {
            margin-top: 4px;
            font-weight: 300;
            font-size: 12px;
            color: #D2CDE5;
         }

         &:hover {
            background-color: lighten(#2A2833, 2%);
         }

         &[active] {
            background-color: white;
            .name {
               color: lighten(#2A2833, 10%);
            }
            .path {
               font-weight: 400;
               color: lighten(#2A2833, 10%);
            }
         }
      }
   }
</style>