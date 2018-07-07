<template lang="jade">
   TextArea.FuncMore(:text="func.more")
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
      .FuncMore {
         width: 640px;

         > :not(h1, h2, h3, h4, h5, h6, pre) {
            margin-left: 12px;
            margin-right: 12px;
         }

         > pre {
            margin-bottom: 30px;
         }
      }
   }
</style>