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
            padding: 24px 28px;
            border-radius: 2px;
         }
      }
   }
</style>