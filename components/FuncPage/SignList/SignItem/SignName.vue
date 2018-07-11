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
         font-size: 16px;
         color: #273340;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);
         user-select: all;
      }
   }
</style>