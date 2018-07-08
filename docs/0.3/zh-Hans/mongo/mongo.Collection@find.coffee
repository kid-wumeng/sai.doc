module.exports =


   name: 'mongo.Collection@find'


   desc: """
      ```js
      user = await db.col('users').find(1)
      ```
   """


   signs: [{

      async: true
      name: '@find( query, [fields] )'
      desc: '查找文档 ( 批量 )'

      params: [{
         name: 'query'
         type: 'plain-object'
      },{
         name: 'fields'
         type: 'string'
         desc: '字段投影'
         optional: true
      }]

      return:
         name: 'docs'
         type: 'Array'

   },{

      async: true
      name: '@find( query, [options] )'
      desc: '查找文档 ( 批量 )'

      params: [{
         name: 'query'
         type: 'plain-object'
      },{
         name: 'options'
         type: 'plain-object'
         optional: true
         children: [{
            name: 'sort'
            type: 'string'
            desc: """
               默认值：*"id"*
               用于排序的字段名
            """
         },{
            name: 'desc'
            type: 'boolean'
            desc: """
               默认值：*false*
               是否逆序 ？
            """
         },{
            name: 'skip'
            type: 'int+'
            desc: """
               默认值：*1*
               跳过的文档条数
            """
         },{
            name: 'page'
            type: 'int+'
            desc: """
               默认值：*1*
               页码
            """
         },{
            name: 'size'
            type: 'int+'
            desc: """
               默认值：*0*
               每页文档条数
            """
         },{
            name: 'fields'
            type: 'plain-object, string'
            desc: '字段投影'
         },{
            name: 'hide'
            type: 'boolean'
            desc: """
               默认值：*false*
               是否包含隐藏的字段
            """
         }]
      }]

      return:
         name: 'docs'
         type: 'Array'
   }]