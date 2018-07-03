<template lang="jade">
   .Func
      DescArea(:func="func")
      SignList(:func="func")
</template>



<script lang="coffee">
   module.exports =
      components:
         'DescArea': require('./DescArea').default
         'SignList': require('./SignList').default

      props:
         'func':
            type: Object
            required: true
</script>



<style lang="less">
   .Func {
      > .DescArea {
         margin-bottom: 40px;
      }
   }
</style>