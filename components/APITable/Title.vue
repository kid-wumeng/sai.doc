<template lang="jade">
   .Title(v-if="title") {{ title }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'title':
            type: String
            required:true
</script>



<style lang="less">
   .APITable .Title {
      margin-left: 6px;
      margin-bottom: 10px;
      font-weight: 400;
      font-size: 13px;
      color: #A2AEBA;
   }
</style>