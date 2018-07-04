<template lang="jade">
   textarea.Copy(v-if="text" spellcheck="false" @input="input" @click="copy") {{ displayText }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'text':
            type: String
            default: ''
         'copyText':
            type: String
            default: ''

      data: ->
         displayText: @text

      methods:
         input: ->
            console.log 123
            @displayText = @text

         copy: ->
            input = @$el
            input.focus()
            input.select()
            document.execCommand('Copy')
</script>



<style lang="less">
   .Copy {
      outline: none;
      user-select: none;
      resize: none;
   }
</style>