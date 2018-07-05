<template lang="jade">
   Row.SignItem
       SignName(:sign="sign")
       SignDesc(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':      require('~/components/Row').default
         'SignName': require('./SignName').default
         'SignDesc': require('./SignDesc').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .PackPage {
      .SignItem {
         border-bottom: 1px solid lighten(#A2AEBA, 26%);
         &:last-child {
            border-bottom: none;
         }

         > .SignName {
            width: 50%;
         }
      }
   }
</style>