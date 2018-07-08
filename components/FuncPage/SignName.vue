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
         align-self: flex-start;
         display: inline-block;
         line-height: 23px;
         font-weight: 500;
         font-size: 19px;
         color: #445669;
         letter-spacing: 0.25px;
         user-select: all;
      }
   }
</style>