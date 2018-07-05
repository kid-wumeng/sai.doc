<template lang="jade">
   .FuncName {{ func.name }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'func':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
      .FuncName {
         font-weight: 400;
         font-size: 26px;
         color: #273340;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
         user-select: all;
      }
   }
</style>