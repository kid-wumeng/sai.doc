<template lang="jade">
   table.Group
      Sign(v-for="(sign, i) in signs", :key="i", :sign="sign")
</template>



<script lang="coffee">
   module.exports =

      components:
         'Sign': require('./Sign').default

      props:
         'group':
            type: Object
            required: true

      computed:
         hint:  -> @group.hint  ? 'group-hint ???'
         funcs: -> @group.funcs ? []

         signs: ->
            totalSigns = []

            for func in @funcs
                for sign in func.signs ? []
                    totalSigns.push(sign)

            return totalSigns
</script>



<style lang="less">
   .Group {
      table-layout: fixed;
   }
</style>