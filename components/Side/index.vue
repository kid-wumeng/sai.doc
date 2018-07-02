<template lang="jade">
   .Side
      .units
         nuxt-link.unit(v-for="unit in units", :key="unit.name", :to="'/_' + unit.path") {{ unit.name }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'docs':
            type: Object
            required: true

         'ver':
            type: String
            required: true

         'lang':
            type: String
            required: true

         'langDefault':
            type: String
            required: true

      computed:
         doc:   -> @docs[@ver][@lang] ? @docs[@ver][@langDefault]
         units: -> @doc.units
</script>



<style lang="less">
   .Side {
   }
</style>