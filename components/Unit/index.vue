<template lang="jade">
   .Unit
      Name(:unit="unit")
      DescArea(:unit="unit")
      GroupList(:unit="unit")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Name':      require('./Name').default
         'DescArea':  require('./DescArea').default
         'GroupList': require('./GroupList').default

      props:
         'unit':
            type: Object
            required: true
</script>



<style lang="less">
   .Unit {
      background-color: white;
      overflow: scroll;

      > .Name {
         margin-bottom: 20px;
      }

      > .DescArea {
         margin-bottom: 80px;
      }
   }
</style>