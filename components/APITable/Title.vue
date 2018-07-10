<template lang="jade">
   .Title(v-if="title") {{ title.toUpperCase() }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'title':
            type: String
            required:true
</script>



<style lang="less">
   .Title {
      margin-left: 6px;
      margin-bottom: 9px;
      font-weight: 500;
      font-size: 12px;
      color: lighten(#A2AEBA, 15%);
   }
</style>