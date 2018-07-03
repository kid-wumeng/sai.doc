<template lang="jade">
   .Name {{ displayName }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'sign':
            type: Object
            required: true

      computed:
         class: -> @sign.class ? false
         async: -> @sign.async ? false
         name:  -> @sign.name  ? 'sign-name ???'

         displayName: ->
            if @class
               return "new sai.#{@name}"
            else
               if @async
                  return "await sai.#{@name}"
               else
                  return "sai.#{@name}"
</script>



<style lang="less">
   .Sign {
      .Name {
         line-height: 21px;
         font-weight: 500;
         font-size: 17px;
         color: #273340;
         user-select: all;
      }
   }
</style>