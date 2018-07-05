<template lang="jade">
   #unit-or-func-child(v-if="isUnit || isFunc")
      Unit(v-if="isUnit && unit", :unit="unit")
      Func(v-if="isFunc && func", :func="func")
</template>



<script lang="coffee">
   module.exports =

      components:
         'Unit': require('~/components/Unit').default
         'Func': require('~/components/Func').default

      props:
         'isUnit':
            type: Boolean
            default: false

         'isFunc':
            type: Boolean
            default: false

         'unit':
            type: Object
            default: null

         'func':
            type: Object
            default: null
</script>