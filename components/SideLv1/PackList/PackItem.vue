<template lang="jade">
   nuxt-link.PackItem(:to="to('/~' + path)", :active="active")
      .name {{ name }}
      .path ~{{ path }}
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
         padding: 12px 20px;

         .name {
            font-family: "Futura";
            font-weight: 500;
            font-size: 13px;
            color: #D6E9FF;
         }
         .path {
            margin-top: 4px;
            font-weight: 300;
            font-size: 12px;
            color: #D6E9FF;
         }

         &:hover {
            background-color: lighten(#1D262F, 6%);
         }

         &[active] {
            background-color: white;
            .name {
               font-weight: 500;
               color: #273340;
            }
            .path {
               font-weight: 500;
               color: #273340;
            }
         }
      }
   }
</style>