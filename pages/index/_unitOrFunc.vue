<template lang="jade">
   #unit-or-func(v-if="isUnit || isFunc")
      SideLv2(:items="items", :func="func")
      Unit(v-if="isUnit && unit", :unit="unit")
      Func(v-if="isFunc && func", :func="func")
</template>



<script lang="coffee">
   module.exports =

      components:
         'SideLv2': require('~/components/SideLv2').default
         'Unit':    require('~/components/Unit').default
         'Func':    require('~/components/Func').default

      computed:
         doc:    -> @$store.state.doc
         units:  -> @$store.state.units
         funcs:  -> @$store.state.funcs

         unitOrFunc: -> @$route.params.unitOrFunc ? ''

         isUnit: -> @unitOrFunc and @unitOrFunc[0] is   '_'
         isFunc: -> @unitOrFunc and @unitOrFunc[0] isnt '_'

         name: ->
            switch
               when @isUnit then @unitOrFunc.slice(1)
               when @isFunc then @unitOrFunc
               else ''

         unit: -> @units[@name]
         func: -> @funcs[@name]

         items: ->
            switch
               when @isUnit and @unit then @unit.items      ? []
               when @isFunc and @func then @func.unit.items ? []
               else                                           []
</script>



<style lang="less">
   #unit-or-func {
   }
</style>