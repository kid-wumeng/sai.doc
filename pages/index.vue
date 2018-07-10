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
      APITable(:apis="apis" title="options")
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
            type: 'boolean'
            desc: """
               测量目标
            """
            default: 6
         },{
            name: 'options'
            type: 'object'
            desc: """
               字符串长度计算模式，仅在 data 为 string 时可用

               * *length* - data.length
               * *cjk* - 中日韩字符占 2 位，其余占 1 位
            """
            default: 'length'

            children: [{
               name: 'host'
               type: 'string'
               desc: '主机地址 ( IP / 域名 )'
               default: '127.0.0.1'
            },{
               name: 'port'
               type: 'int ≥ 0'
               desc: '端口号'
               default: 27017
            },{
               name: 'name'
               type: 'string'
               desc: '使用的数据库名'
               default: 'test'
            },{
               name: 'user'
               type: 'string'
               desc: '登录用户名'
               default: ''
            },{
               name: 'pass'
               type: 'string'
               desc: '登录密码'
               default: ''
            },{
               name: 'autoID'
               type: 'boolean'
               desc: '当插入新文档时，是否自动生成自增ID ？'
               default: false
            },{
               name: 'autoIDStore'
               type: 'string'
               desc: '记录自增ID的集合名'
               default: 'id_store'
            }]
         },{
            name: 'options.name'
            type: 'string'
         }]
</script>



<style lang="less">
   .APITable {
      margin: 100px;
   }
</style>