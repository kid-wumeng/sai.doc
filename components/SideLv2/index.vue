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

         name: ->
            if @path[0] is '@'
               @path.slice(1)
            else
               @path

         pack: -> @$store.state.packs[@name]
         func: -> @$store.state.funcs[@name]

         items: ->
            switch
               when @pack then @pack.items      ? []
               when @func then @func.pack.items ? []
               else                               []

      methods:
         isUnitItem: ( item ) ->
            return _.isString( item )

         isCurrentFunc: ( item ) ->
            return item.name is @func?.name
</script>



<style lang="less">
   .SideLv2 {
      height: 100%;
      padding: 20px 0;
      overflow: scroll;
      border-right: 1px solid rgba(0, 0, 0, 0.1);
      box-shadow: 1px 0 10px rgba(0, 0, 0, 0.1);
   }
</style>