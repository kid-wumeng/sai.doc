<template lang="jade">
   tr.APIItem
      td(valign="top"): APIName(:api="api")
      td(valign="top"): APIType(:api="api")
      td(valign="top"): APIDesc(:api="api")
      td(valign="top"): APIDefault(:api="api")
</template>



<script lang="coffee">
   module.exports =
      components:
         'APIName':    require('./APIName').default
         'APIType':    require('./APIType').default
         'APIDefault': require('./APIDefault').default
         'APIDesc':    require('./APIDesc').default

      props:
         'api':
            type: Object
            required: true
</script>



<style lang="less">
   .APIItem {
      line-height: 22px;
      font-family: "Inconsolata";
      font-size: 15px;
      color: #273340;
      td {
         padding: 9px 16px;
      }
   }
</style>