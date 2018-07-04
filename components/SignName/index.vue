<template lang="jade">
   .SignName {{ displayName }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'sign':
            type: Object
            required: true
         'sai':
            type: Boolean
            default: false

      computed:

         # type - 'func', 'method', 'class', 'const'

         type:  -> @sign.type  ? 'func'
         name:  -> @sign.name  ? '???'
         async: -> @sign.async ? false

         sais:  -> @type is 'class' or @type is 'func'
         news:  -> @type is 'class'
         await: -> @async

         displayName: ->

            name = @name
            name = 'sai.'   + name if @sais and @sai
            name = 'new '   + name if @news
            name = 'await ' + name if @await

            return name
</script>



<style lang="less">
   .SignName {
      color: #273340;
      word-break: break-all;
      user-select: all;
   }
</style>