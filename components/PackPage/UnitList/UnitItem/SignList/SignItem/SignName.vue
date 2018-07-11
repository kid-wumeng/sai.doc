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
         padding: 0 24px;
         a {
            display: inline-block;
            padding: 16px 0;
            font-weight: 400;
            font-size: 12px;
            color: lighten(#273340, 15%);
            letter-spacing: 0.15px;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);
            word-break: break-all;
         }
      }
   }
</style>