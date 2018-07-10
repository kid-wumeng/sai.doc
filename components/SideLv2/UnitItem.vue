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
         padding: 0 20px;
         text-align: center;
         font-family: "Futura";
         font-weight: 500;
         font-size: 12px;
         color: #A2AEBA;
         margin-bottom: 8px;
      }
   }
</style>