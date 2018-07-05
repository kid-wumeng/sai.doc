<template lang="jade">
   TextArea.IntroArea(:text="sign.intro")
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



<style lang="less" scoped>
   .IntroArea {
      text-indent: 2em;
      > * {
         margin-bottom: 0;
      }
   }
</style>