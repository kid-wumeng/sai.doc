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
      border: 1px solid lighten(#A2AEBA, 21%);
      border-radius: 2px;
      box-shadow: 0 0 15px rgba(100, 100, 100, 0.12);

      > table {
         width: 100%;
         table-layout: fixed;
         border-collapse: collapse;

         > tbody {
            > tr {
               border-bottom: 1px solid lighten(#A2AEBA, 26%);
               &:last-child {
                   border-bottom: none;
               }
               > * {
                  padding: 10px 20px;
               }
               > *:first-child { border-left:  none }
               > *:last-child  { border-right: none }
            }

            > tr:first-child > *  { border-top:    none }
            > tr:last-child  > td { border-bottom: none }
         }
      }
   }

   .Table[auto] {
      > table {
         table-layout: auto;
      }
   }
</style>