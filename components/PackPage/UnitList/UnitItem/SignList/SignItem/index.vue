<template lang="jade">
   tr.SignItem
       td: SignName(:sign="sign")
       td: SignDesc(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'SignName': require('./SignName').default
         'SignDesc': require('./SignDesc').default

      props:
         'sign':
            type: Object
            required: true
</script>