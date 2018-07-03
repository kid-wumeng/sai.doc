<template lang="jade">
   ParamTable(:params="params")
</template>



<script lang="coffee">
   module.exports =

      components:
         'ParamTable': require('~/components/ParamTable').default

      props:
         'sign':
            type: Object
            required: true

      computed:
         params: -> @sign.params ? []
</script>