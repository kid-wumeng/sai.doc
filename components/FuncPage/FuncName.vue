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
         font-size: 27px;
         color: #fff;
         user-select: all;
      }
   }
</style>