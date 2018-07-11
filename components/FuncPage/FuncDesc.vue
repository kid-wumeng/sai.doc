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
            padding: 20px 32px 21px 30px;
            > code {
               line-height: 25px;
               font-family: "Monaco";
               font-size: 13px;
            }
         }
      }
   }
</style>