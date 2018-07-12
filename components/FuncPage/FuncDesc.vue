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
         > pre {
            padding: 0;
            margin-left: 2em;
            > code {
               line-height: 26px;
               font-size: 14px;
            }
         }
      }
   }
</style>