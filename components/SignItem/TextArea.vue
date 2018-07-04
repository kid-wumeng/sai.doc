<template lang="jade">
   TextArea(:text="sign.text")
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
   .TextArea {
      text-indent: 2em;
      > * {
         margin-bottom: 0;
      }
   }
</style>