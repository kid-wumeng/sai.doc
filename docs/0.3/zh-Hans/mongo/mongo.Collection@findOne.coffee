module.exports =


   name: 'mongo.Collection@findOne'


   desc: """
      ```js
      user = await db.col('users').findOne(1)
      ```
   """


   signs: [{

      async: true
      name: '@findOne( id, [fields] )'
      desc: '查找文档'

      params: [{
         name: 'id'
         type: 'int+'
         desc: '默认值：*1*'
      },{
         name: 'fields'
         type: 'string'
         desc: '字段投影'
         optional: true
      }]

      return:
         name: 'doc'
         type: 'plain-object, null'

   },{

      async: true
      name: '@findOne( query, [fields] )'
      desc: '查找文档'

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
         name: 'doc'
         type: 'plain-object, null'

   },{

      async: true
      name: '@findOne( query, [options] )'
      desc: '查找文档'

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
         name: 'doc'
         type: 'plain-object, null'
   }]