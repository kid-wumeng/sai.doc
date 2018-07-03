<template lang="jade">
   .ChildTable(v-if="show")
      Title(:title="name")
      ChildItem(v-for="(child, i) in children", :key="i", :child="child")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Title':     require('./Title').default
         'ChildItem': require('./ChildItem').default

      props:
         'parentParam':
            type: Object
            required: true

         'children':
            type: Array
            default: -> []

      computed:
         show:  -> @children.length > 0
         name:  -> @parentParam.name ? '???'
</script>



<style lang="less" scoped>
   .ChildTable {
      margin-top: 8px;
      padding-top: 8px;
      background-color: rgba(250, 250, 250, 0.93);
      position: relative;

      .ChildItem {
         border-bottom: 1px solid lighten(#A2AEBA, 26%);
         &:last-child {
            border-bottom: none;
         }
      }
   }
</style>