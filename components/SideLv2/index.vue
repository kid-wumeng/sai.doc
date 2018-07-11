<template lang="jade">
   .SideLv2
      .item(v-for="(item, i) in items", :key="i")
         UnitItem(:item="item", v-if="isUnitItem(item)")
         FuncItem(:item="item", v-else :active="isCurrentFunc(item)")
</template>



<script lang="coffee">
   module.exports =
      components:
         'UnitItem': require('./UnitItem').default
         'FuncItem': require('./FuncItem').default

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

         items: ->
            switch
               when @type is 'pack' and @pack then @pack.items      ? []
               when @type is 'func' and @func then @func.pack.items ? []
               else                                                   []

      methods:
         isUnitItem: ( item ) ->
            return _.isString( item )

         isCurrentFunc: ( item ) ->
            return @type is 'func' and item.name is @func?.name
</script>



<style lang="less">
   .SideLv2 {
      height: 100%;
      padding: 20px 0;
      overflow: scroll;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.12);

      > .item:not(:first-child) {
         > .UnitItem {
            margin-top: 24px;
         }
      }
   }
</style>