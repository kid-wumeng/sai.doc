<template lang="jade">
   .PackName {{ pack.name }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'pack':
            type: Object
            required: true
</script>



<style lang="less">
   .PackPage .PackName {
      font-weight: 300;
      font-size: 27px;
      color: #273340;
      text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
      user-select: all;
   }
</style>