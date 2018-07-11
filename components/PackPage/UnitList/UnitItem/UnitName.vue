<template lang="jade">
   .UnitName(v-if="unit.name")
      .name {{ unit.name }}
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
         text-indent: 1em;
         font-weight: 500;
         font-size: 16px;
         color: #A2AEBA;
         margin-bottom: 30px;
      }
   }
</style>