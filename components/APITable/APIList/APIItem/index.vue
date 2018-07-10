<template lang="jade">
   tr.APIItem
      td(valign="top"): APIName(:api="api")
      td(valign="top"): APIType(:api="api")
      td(valign="top"): APIDefault(:api="api")
      td(valign="top"): APIDesc(:api="api")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':        require('~/components/Row').default
         'Column':     require('~/components/Column').default
         'APIName':    require('./APIName').default
         'APIType':    require('./APIType').default
         'APIDefault': require('./APIDefault').default
         'APIDesc':    require('./APIDesc').default
      #    'ChildrenTable': require('./ChildrenTable').default

      props:
         'api':
            type: Object
            required: true
</script>



<style lang="less">
   .APIItem {
      line-height: 24px;
      font-size: 14px;
      color: #273340;
   }
</style>