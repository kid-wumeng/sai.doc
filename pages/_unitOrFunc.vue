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

         isUnit: -> @unitOrFunc and @unitOrFunc[0] is   '@'
         isFunc: -> @unitOrFunc and @unitOrFunc[0] isnt '@'

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

   @side-width: 160px;

   #unit-or-func {
      position: relative;

      .SideLv2 {
         position: absolute;
         left: 0;
         top: 0;
         width: @side-width;
         height: 100%;
      }

      .Unit,
      .Func {
         margin-left: @side-width;
         height: 100%;
         padding: 36px 46px;
      }
   }
</style>