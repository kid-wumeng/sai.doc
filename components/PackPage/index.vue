<template lang="jade">
   .PackPage
      PackName(:pack="pack")
      PackDesc(:pack="pack")
      UnitList(:units="units")
</template>



<script lang="coffee">
   module.exports =
      components:
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
      background-color: white;
      overflow: scroll;

      > .PackDesc {
         margin-bottom: 80px;
      }
   }
</style>