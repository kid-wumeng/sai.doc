<template lang="jade">
   TextArea.DescArea(:text="sign.desc")
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
   .Sign {
      .DescArea {
         > * {
            margin-bottom: 0;
         }
      }
   }
</style>