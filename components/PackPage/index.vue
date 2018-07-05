<template lang="jade">
   .PackPage pack-page
      //- Name(:pack="pack")
      //- DescArea(:pack="pack")
      //- GroupList(:pack="pack")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Name':      require('./Name').default
         'DescArea':  require('./DescArea').default
         'GroupList': require('./GroupList').default

      props:
         'pack':
            type: Object
            required: true
</script>



<style lang="less">
   .PackPage {
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