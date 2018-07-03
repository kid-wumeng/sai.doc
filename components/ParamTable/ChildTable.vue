<template lang="jade">
   .ChildTable(v-if="show")
      .title {{ title }}
      ChildItem(v-for="(child, i) in children", :key="i", :child="child")
</template>



<script lang="coffee">
   module.exports =
      components:
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
         title: -> @name.toUpperCase()
</script>



<style lang="less" scoped>
   .ChildTable {
      background-color: rgba(250, 250, 250, 0.93);
      position: relative;

      .title {
         position: absolute;
         top: -20px;
         width: 100%;
         height: 40px;
         line-height: 40px;
         text-align: center;
         font-weight: bold;
         font-size: 18px;
         color: lighten(#A2AEBA, 20%);
      }

      .ChildItem {
         border-bottom: 1px solid lighten(#A2AEBA, 26%);
         &:last-child {
            border-bottom: none;
         }
      }
   }
</style>