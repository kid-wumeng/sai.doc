<template lang="jade">
   Row.SignLine
      SignName(:sign="sign" sai)
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
         padding: 10px 16px;
         line-height: 22px;
         font-weight: 400;
         font-size: 14px;
         color: #273340;
         letter-spacing: 0.3px;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
      }

      .DescArea {
         padding: 10px 16px;
      }
   }
</style>