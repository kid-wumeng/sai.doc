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
   .FuncPage {
      .SignName {
         line-height: 21px;
         font-weight: 500;
         font-size: 22px;
         color: #445669;
         letter-spacing: 0.25px;
         user-select: all;
      }
   }
</style>