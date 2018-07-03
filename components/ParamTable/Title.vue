<template lang="jade">
   .Title {{ title.toUpperCase() }}
</template>



<script lang="coffee">
   module.exports =
      components:
         'ChildItem': require('./ChildItem').default

      props:
         'title':
            type: String
            required: true
</script>



<style lang="less" scoped>
   .Title {
      position: absolute;
      top: -20px;
      width: 100%;
      height: 40px;
      line-height: 40px;
      text-align: center;
      font-weight: bold;
      font-size: 20px;
      color: lighten(#A2AEBA, 20%);
   }
</style>