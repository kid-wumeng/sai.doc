<template lang="jade">
   .UnitItem
      UnitName(:unit="unit")
      SignList(:signs="signs")
</template>



<script lang="coffee">
   module.exports =
      components:
         'UnitName': require('./UnitName').default
         'SignList': require('./SignList').default

      props:
         'unit':
            type: Object
            required: true

      computed:
         funcs: -> @unit.funcs ? []

         signs: ->
            signs = []

            for func in @funcs
                for sign in func.signs ? []
                    sign.func = func
                    signs.push(sign)

            return signs
</script>