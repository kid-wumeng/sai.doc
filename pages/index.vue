<template lang="jade">
   #index
      //- HomePage
      //- Table
      //-    tr
      //-       td(valign="top") sort
      //-       td(valign="top") string
      //-       td(valign="top") "id"
      //-       td(valign="top") 排序字段
      //-    tr
      //-       td(valign="top") desc
      //-       td(valign="top") boolean
      //-       td(valign="top") false
      //-       td(valign="top") 是否逆序？<br/>哈哈哈<br/>哈哈哈
      APITable(:apis="apis")
</template>



<script lang="coffee">
   module.exports =
      components:
         'HomePage': require('~/components/HomePage').default
         'Table':    require('~/components/Table').default
         'APITable': require('~/components/APITable').default

      data: ->
         apis: [{
            name: 'data'
            type: 'object'
            desc: """
               测量目标，一般多是：
            """
         },{
            name: 'mode'
            type: 'string'
            desc: """
               字符串长度计算模式，仅在 data 为 string 时可用

               * *length* - data.length
               * *cjk* - 中日韩字符占 2 位，其余占 1 位
            """
            default: 'length'
         }]
</script>



<style lang="less">
   .Table {
   }
</style>