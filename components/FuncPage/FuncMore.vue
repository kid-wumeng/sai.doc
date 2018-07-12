<template lang="jade">
   TextArea.FuncMore(:text="func.more" show-lang)
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
   .FuncPage .FuncMore {
      padding: 50px 0 0;

      > pre {
         padding: 38px 42px;
         margin-bottom: 50px;
         code {
            letter-spacing: 0.2px;
         }
      }
      > :not( pre ) {
         padding: 0 20px;
      }
      > :not( h1, h2, h3, h4, h5, h6, pre ) {
         width: 600px;
         text-indent: 2em;
      }
      > pre:last-child {
         margin-bottom: 0;
      }
   }
</style>