<template lang="jade">
   .UnitList
      UnitItem(v-for="(unit, i) in units", :key="i", :unit="unit")
</template>



<script lang="coffee">
   module.exports =
      components:
         'UnitItem': require('./UnitItem').default

      props:
         'units':
            type: Array
            default: -> []
</script>



<style lang="less">
   .PackPage .UnitList {
      > .UnitItem {
         padding: 50px 50px;
         padding-top: 45px;
      }
   }
</style>