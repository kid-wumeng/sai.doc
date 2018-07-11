<template lang="jade">
   #path
      PackPage(v-if="type === 'pack'", :pack="pack")
      FuncPage(v-if="type === 'func'", :func="func")
</template>



<script lang="coffee">
   module.exports =
      components:
         'PackPage': require('~/components/PackPage').default
         'FuncPage': require('~/components/FuncPage').default

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

         show: ->
            switch
               when @type is 'pack' and @pack then true
               when @type is 'func' and @func then true
               else                                false
</script>



<style lang="less">
   #path {
      height: 100%;
   }
</style>