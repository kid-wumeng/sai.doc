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
   .FuncPage .FuncMore {
      width: 640px;
      padding: 50px;
      color: #000;

      > :not(h1, h2, h3, h4, h5, h6, pre) {
         text-indent: 2em;
      }
      > pre {
         margin-bottom: 30px;
         background-color: rgba(250, 250, 250, 1);
      }
   }
</style>