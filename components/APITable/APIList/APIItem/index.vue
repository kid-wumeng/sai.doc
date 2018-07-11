<template lang="jade">
   tr.APIItem
      td(valign="middle"):                     APIName(:api="api")
      td(valign="middle" v-if="!hideType"):    APIType(:api="api")
      td(valign="middle"):                     APIDesc(:api="api")
      td(valign="middle" v-if="!hideDefault"): APIDefault(:api="api")
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
         padding: 10px 18px;
      }
   }
</style>