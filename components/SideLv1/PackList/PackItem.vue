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
            color: white;
         }
         .path {
            margin-top: 4px;
            font-weight: 300;
            font-size: 12px;
            color: darken(#A2AEBA, 18%);
         }

         &:hover {
            background-color: lighten(#273340, 7%);
         }

         &[active] {
            background-color: white;
            .name {
               color: lighten(#273340, 10%);
               text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);
            }
            .path {
               font-weight: 400;
               color: lighten(#273340, 10%);
               text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);
            }
         }
      }
   }
</style>