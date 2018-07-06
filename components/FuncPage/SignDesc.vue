<template lang="jade">
   TextArea.SignDesc(:text="sign.desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
      .SignDesc {
         text-indent: 2em;

         > * {
            margin-bottom: 0;
         }
      }
   }
</style>