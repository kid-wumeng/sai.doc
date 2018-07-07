<template lang="jade">
   .Title(v-if="title")
      .wrap
         .text {{ title.toUpperCase() }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'title':
            type: String
            default: ''
</script>



<style lang="less">

   @height: 26px;

   .ParamTable {
      .Title {
         position:    absolute;
         top:        -@height / 2;
         width:       100%;
         height:      @height;
         line-height: @height;
         display: flex;
         justify-content: center;
         align-items: center;

         .wrap {
            display: inline-block;
            background-color: rgba(255, 255, 255, 1);
            border: 1px solid lighten(#A2AEBA, 18%);
            border-radius: 2px;
            box-shadow: 0 0 15px rgba(100, 100, 100, 0.12);
            display: flex;
            justify-content: center;
            align-items: center;

            .text {
               margin: 0 12px;
               font-weight: 500;
               font-size: 13px;
               color: lighten(#A2AEBA, 15%);
            }
         }
      }
   }
</style>