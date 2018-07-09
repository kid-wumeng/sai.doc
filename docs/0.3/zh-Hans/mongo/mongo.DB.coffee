module.exports =


   name: 'mongo.DB'


   desc: """
      ```js
      db = new sai.mongo.DB({
         host: '127.0.0.1',
         name: 'test'
      })

      await db.connect()

      users = await db.col('users').find()
      ```
   """


   signs: [{
      name: 'new mongo.DB( options )'
      more: """
         基于 [MongoDB Node.js Driver](http://mongodb.github.io/node-mongodb-native/3.1) 封装

         选项与默认值：

         ```js
         new sai.MongoDB({
            host: '127.0.0.1',
            port: 27017,
            name: 'test',
            user: '',
            pass: '',
            autoID: false,
            autoIDStore: 'id_store'
         })
         ```
      """

      params: [{
         name: 'options'
         type: 'plain-object'
         desc: '选项'
         optional: true
         children: [{
            name: 'host'
            type: 'string'
            desc: '主机地址 ( IP / 域名 )'
            default: '127.0.0.1'
         },{
            name: 'port'
            type: '0, int+'
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
      }]

      return:
         name: 'db'
         type: 'sai.mongo.DB'
   }]