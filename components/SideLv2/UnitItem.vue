<template lang="jade">
   .UnitItem {{ name }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'item':
            type: String
            required: true

      computed:
         name: -> @item
</script>



<style lang="less">
   .SideLv2 {
      .UnitItem {
         display: block;
         padding: 10px 20px;
         text-align: center;
         font-weight: 600;
         font-size: 15px;
         color: lighten(#A2AEBA, 10%);
      }
   }
</style>