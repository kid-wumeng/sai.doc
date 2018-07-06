<template lang="jade">
   .SignName {{ formatSignName(sign) }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .PackPage {
      .SignName {
         flex: none;
         padding: 8px 16px;
         line-height: 22px;
         font-weight: 400;
         font-size: 13px;
         color: #273340;
         letter-spacing: 0.3px;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);
         word-break: break-all;
      }
   }
</style>