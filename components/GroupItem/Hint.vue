<template lang="jade">
   .Hint {{ hint }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'group':
            type: Object
            required: true

      computed:
         hint: -> @group.hint ? ''
</script>



<style lang="less" scoped>
   .Hint {
   }
</style>