<template lang="jade">
   ParamTable.ThrowsTable(title="throws", :params="throws" )
</template>



<script lang="coffee">
   module.exports =
      components:
         'ParamTable': require('~/components/ParamTable').default

      props:
         'sign':
            type: Object
            default: null

      computed:
         throws: -> @sign.throws ? []
</script>