<template lang="jade">
   tr.APIItem
      td(valign="top"):                     APIName(:api="api")
      td(valign="top" v-if="!hideType"):    APIType(:api="api")
      td(valign="top"):                     APIDesc(:api="api")
      td(valign="top" v-if="!hideDefault"): APIDefault(:api="api")
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
      line-height: 22px;
      font-family: "Inconsolata";
      font-size: 15px;
      color: #273340;
      td {
         padding: 9px 16px;
      }
   }
</style>