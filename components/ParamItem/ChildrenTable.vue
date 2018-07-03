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



<style lang="less" scoped>
   .ChildrenTable {
      background-color: rgba(250, 250, 250, 1);
   }
</style>