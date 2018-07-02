<template lang="jade">
   #unit-or-func(v-if="unitOrFunc")
      Side2(:unitOrFunc="unitOrFunc")
</template>



<script lang="coffee">
   module.exports =

      components:
         'Side2': require('~/components/Side2').default

      computed:
         unitOrFunc: -> @$route.params.unitOrFunc
</script>



<style lang="less">
   #unit-or-func {
   }
</style>