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
         padding: 0 22px;
         text-align: center;
         a {
            display: inline-block;
            padding: 14px 0;
            font-weight: 400;
            font-size: 12px;
            color: #273340;
            letter-spacing: 0.25px;
            word-break: break-all;
         }
      }
   }
</style>