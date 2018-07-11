<template lang="jade">
   .APIType(v-if="api.type") {{ api.type }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'api':
            type: Object
            required: true
</script>



<style lang="less">
   .APIType {
      text-align: center;
      font-family: "Monaco";
      font-size: 13px;
      color: #A2AEBA;
      white-space: nowrap;
   }
</style>