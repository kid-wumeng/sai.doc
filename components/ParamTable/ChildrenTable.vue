<template lang="jade">
   ParamTable.ChildrenTable(:title="title", :params="params")
</template>



<script lang="coffee">
   module.exports =

      beforeCreate: ->
         @$options.components.ParamTable = require('~/components/ParamTable').default

      props:
         'param':
            type: Object
            required: true

      computed:
         title:  -> @param.name     ? '???'
         params: -> @param.children ? []
</script>



<style lang="less">
   .ParamTable {
      .ChildrenTable {
         border-top: 1px solid lighten(#A2AEBA, 27%);
      }
   }
</style>