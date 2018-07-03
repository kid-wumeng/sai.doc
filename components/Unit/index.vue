<template lang="jade">
   .Unit
      .name {{ name }}
      .text {{ text }}

      Group(v-for="(group, i) in groups", :key="i", :group="group")
</template>



<script lang="coffee">
   module.exports =

      components:
         'Group': require('./Group').default

      props:
         'unit':
            type: Object
            required: true

      computed:
         name:  -> @unit.name  ? 'unit-name ???'
         text:  -> @unit.text  ? ''
         items: -> @unit.items ? []

         groups: ->
            groups = []
            hint   = ''
            funcs  = []

            for item, i in @items

                if typeof(item) is 'string'
                   hint = item
                else
                   funcs.push(item)

                next = @items[i+1]

                if !next or typeof(next) is 'string'
                   groups.push({ hint, funcs })
                   funcs = []

            return groups
</script>



<style lang="less">
   .Unit {
      background-color: white;
      overflow: scroll;
   }
</style>