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
         pre {
            code {
               line-height: 25px;
               font-family: "Monaco";
               font-size: 13px;
            }
         }
      }
   }
</style>