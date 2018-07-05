<template lang="jade">
   TextArea.SignIntro(:text="sign.intro")
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
      .SignIntro {
         text-indent: 2em;
         > * {
            margin-bottom: 0;
         }
      }
   }
</style>