<template lang="jade">
   .UnitName(v-if="unit.name") {{ unit.name }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'unit':
            type: Object
            required: true
</script>



<style lang="less">
   .PackPage {
      .UnitName {
         text-align: center;
         font-weight: 600;
         font-size: 17px;
         color: lighten(#A2AEBA, 10%);
      }
   }
</style>