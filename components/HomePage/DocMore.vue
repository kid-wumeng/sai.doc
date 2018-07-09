<template lang="jade">
   TextArea.DocMore(:text="doc.more")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'doc':
            type: Object
            required: true
</script>



<style lang="less">
   .HomePage {
      .DocMore {
         width: 640px;

         > :not(h1, h2, h3, h4, h5, h6, pre) {
            text-indent: 2em;
            margin-left: 12px;
            margin-right: 12px;
         }

         > pre {
            margin-bottom: 30px;
         }
      }
   }
</style>