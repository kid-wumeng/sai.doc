<template lang="jade">
   SignList(:signs="signs")
</template>



<script lang="coffee">
   module.exports =

      components:
         'SignList': require('~/components/SignList').default

      props:
         'func':
            type: Object
            required: true

      computed:
         signs: -> @func.signs ? []
</script>