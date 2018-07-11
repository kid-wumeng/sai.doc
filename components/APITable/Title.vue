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
      margin-bottom: 10px;
      font-weight: 500;
      font-size: 13px;
      color: lighten(#A2AEBA, 10%);
   }
</style>