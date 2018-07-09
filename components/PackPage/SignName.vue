<template lang="jade">
   .SignName
      nuxt-link(:to="to(funcName)") {{ formatSignName(sign) }}
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
         flex: none;
         display: flex;
         align-items: center;

         > a {
            padding: 10px 16px;
            line-height: 22px;
            font-weight: 400;
            font-size: 13px;
            color: #273340;
            letter-spacing: 0.3px;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.15);
            word-break: break-all;

         }
      }
   }
</style>