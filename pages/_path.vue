<template lang="jade">
   #path
      //- Unit(v-if="unit", :unit="unit")
      //- Func(v-if="func", :func="func")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Unit': require('~/components/Unit').default
         'Func': require('~/components/Func').default

      computed:
         doc:    -> @$store.state.doc
         # units:  -> @$store.state.units
         # funcs:  -> @$store.state.funcs
         #
         # unitOrFunc: -> @$route.params.unitOrFunc ? ''
         #
         # isUnit: -> @unitOrFunc and @unitOrFunc[0] is   '@'
         # isFunc: -> @unitOrFunc and @unitOrFunc[0] isnt '@'
         #
         # name: ->
         #    switch
         #       when @isUnit then @unitOrFunc.slice(1)
         #       when @isFunc then @unitOrFunc
         #       else ''
         #
         # unit: -> @units[@name]
         # func: -> @funcs[@name]

</script>