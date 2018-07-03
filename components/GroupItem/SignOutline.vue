<template lang="jade">
   SignOutline(:signs="signs")
</template>



<script lang="coffee">
   module.exports =

      components:
         'SignOutline': require('~/components/SignOutline').default

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



<style lang="less" scoped>
   .GroupItem {
   }
</style>