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
            padding: 24px 36px 25px 34px;
            > code {
               line-height: 29px;
               font-size: 15px;
            }
         }
      }
   }
</style>