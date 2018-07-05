<template lang="jade">
   .FuncPage func-page
      //- Name(:func="func")
      //- DescArea(:func="func")
      //- SignList(:func="func")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Name':     require('./Name').default
         'DescArea': require('./DescArea').default
         'SignList': require('./SignList').default

      props:
         'func':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
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