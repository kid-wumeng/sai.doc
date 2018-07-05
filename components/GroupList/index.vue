<template lang="jade">
   .GroupList
      GroupItem(v-for="(group, i) in groups", :key="i", :group="group")
</template>



<script lang="coffee">
   module.exports =
      components:
         'GroupItem': require('~/components/GroupItem').default

      props:
         'groups':
            type: Array
            default: -> []
</script>



<style lang="less">
   .GroupList {
      > .GroupItem {
         margin-top: 48px;
         &:first-child {
            margin-top: 0;
         }
      }
   }
</style>