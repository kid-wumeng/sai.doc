<template lang="jade">
   .Table(:auto="auto")
      table
         tbody
            slot
</template>



<script lang="coffee">
   module.exports =
      props:
         'auto':
            type: Boolean
            default: false
</script>



<style lang="less">
   .Table {
      display: inline-block;
      border: 1px dashed lighten(#A2AEBA, 24%);

      > table {
         width: 100%;
         table-layout: fixed;
         border-collapse: collapse;
         tr {
            > * {
               border: 1px dashed lighten(#A2AEBA, 24%);
            }
            > *:first-child { border-left:  none }
            > *:last-child  { border-right: none }
         }
         tr:first-child > *  { border-top:    none }
         tr:last-child  > td { border-bottom: none }
      }
   }

   .Table[auto] {
      > table {
         table-layout: auto;
      }
   }
</style>