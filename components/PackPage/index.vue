<template lang="jade">
   .PackPage
      Column
         PackName(:pack="pack")
         PackDesc(:pack="pack")
      UnitList(:units="units")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Column':   require('~/components/Column').default
         'PackName': require('./PackName').default
         'PackDesc': require('./PackDesc').default
         'UnitList': require('./UnitList').default

      props:
         'pack':
            type: Object
            required: true

      computed:
         items: -> @pack.items ? []

         units: ->
            units = []
            name  = ''
            funcs = []

            for item, i in @items

               if _.isString(item)
                   name = item
               else
                   funcs.push(item)

               next = @items[i+1]

               if _.isString(next) or _.isNil(next)
                   units.push({ name, funcs })
                   funcs = []

            return units
</script>



<style lang="less">
   .PackPage {
      > .Column {
         padding: 50px;
         > .PackDesc {
            margin-top: 20px;
         }
         > .UnitList {
            margin-top: 48px;
         }
      }
   }
</style>