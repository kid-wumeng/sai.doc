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
            font-weight: 300;
            font-size: 12px;
            color: #273340;
            letter-spacing: 0.75px;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);
            word-break: break-all;
         }
      }
   }
</style>