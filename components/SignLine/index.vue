<template lang="jade">
   Row.SignLine
      SignName(:sign="sign")
      DescArea(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':      require('~/components/Row').default
         'SignName': require('~/components/SignName').default
         'DescArea': require('./DescArea').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .SignLine {
      border-bottom: 1px solid lighten(#A2AEBA, 26%);
      &:last-child {
         border-bottom: none;
      }

      .SignName {
         flex: none;
         width: 50%;
         padding: 10px;
         line-height: 21px;
         font-weight: 500;
         font-size: 14px;
      }

      .DescArea {
         padding: 10px;
      }
   }
</style>