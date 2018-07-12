<template lang="jade">
   .SignName: nuxt-link(:to="to(funcName)") {{ formatSignName(sign) }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'sign':
            type: Object
            required: true

      computed:
         funcName: -> @sign?.func?.name ? ''
</script>



<style lang="less">
   .PackPage {
      .SignName {
         padding: 0 20px;
         a {
            display: inline-block;
            padding: 14px 0;
            font-weight: 500;
            font-size: 13px;
            color: lighten(#2A2833, 10%);
            letter-spacing: 0.1px;
            word-break: break-all;
         }
      }
   }
</style>