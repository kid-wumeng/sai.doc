<template lang="jade">
   TextArea.FuncDesc(:text="func.desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'func':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
      .FuncDesc {
         width: 600px;
         text-indent: 2em;
      }
   }
</style>