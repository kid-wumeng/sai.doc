<template lang="jade">
   TextArea.SignMore(:text="sign.more")
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
      .SignMore {
         line-height: 20px;
         font-size: 14px;

         ul, ol {
            margin-left: 5px;

            li {
               margin-bottom: 8px;
            }
         }
      }
   }
</style>