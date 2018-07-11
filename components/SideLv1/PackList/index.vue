<template lang="jade">
   .PackList
      PackItem(v-for="pack in packs", :key="pack.name", :pack="pack", :active="isCurrentPack(pack)")
</template>



<script lang="coffee">
   module.exports =
      components:
         'PackItem': require('./PackItem').default


      props:
         'packs':
            type: Array
            default: -> []


      computed:
         path: ->
            @$route.params.path ? ''

         type: ->
            if @path[0] is '@'
               return 'pack'
            else
               return 'func'

         name: ->
            if @path[0] is '@'
               @path.slice(1)
            else
               @path

         pack: -> @$store.state.packs[@name]
         func: -> @$store.state.funcs[@name]


      methods:
         isCurrentPack: ( pack ) ->
            if @pack
               if @pack.path is pack.path
                  return true

            if @func
               if @func.pack.path is pack.path
                  return true

            return false
</script>