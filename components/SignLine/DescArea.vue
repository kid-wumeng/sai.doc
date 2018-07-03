<template lang="jade">
   TextArea.DescArea(:text="desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'sign':
            type: Object
            required: true

      computed:
         desc: -> @sign.desc ? ''
</script>