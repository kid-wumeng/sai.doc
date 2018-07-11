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
         > :not(h1, h2, h3, h4, h5, h6, .table, pre) {
            width: 600px;
            text-indent: 2em;
         }
         > pre {
            margin-bottom: 30px;
         }
         > .table {
            th, td {
               padding: 11px 19px;
            }
         }
      }
   }
</style>