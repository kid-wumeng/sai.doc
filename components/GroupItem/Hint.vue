<template lang="jade">
   .Hint(v-if="hint") {{ hint }}
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
      text-align: center;
      font-weight: 600;
      font-size: 17px;
      color: lighten(#A2AEBA, 10%);
   }
</style>