<template lang="jade">
   tr.APIItem
      td:                      APIName(:api="api")
      td(v-if="!hideType"):    APIType(:api="api")
      td:                      APIDesc(:api="api")
      td(v-if="!hideDefault"): APIDefault(:api="api")
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

         'hideType':
            type: Boolean
            default: false

         'hideDefault':
            type: Boolean
            default: false
</script>



<style lang="less">
   .APIItem {
      line-height: 21px;
      font-family: "Inconsolata";
      font-size: 15px;
      color: #273340;
      td {
         padding: 10px 18px;
      }
   }
</style>