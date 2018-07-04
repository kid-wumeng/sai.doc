<template lang="jade">
   .GroupItem
      Hint(:group="group")
      SignOutline(:group="group")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Hint':        require('./Hint').default
         'SignOutline': require('./SignOutline').default

      props:
         'group':
            type: Object
            required: true

      computed:
         funcs: -> @group.funcs ? []

         signs: ->
            signs = []

            for func in @funcs
                signs = signs.concat(func.signs ? [])

            return signs
</script>



<style lang="less">
   .GroupItem {
      .Hint {
         margin-bottom: 16px;
      }
   }
</style>