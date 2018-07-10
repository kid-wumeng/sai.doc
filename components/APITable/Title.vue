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
      font-size: 14px;
   }
</style>