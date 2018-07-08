module.exports =


   name: 'mongo.DB@uri'


   desc: """
      ```js
      db = new sai.mongo.DB({
         host: '127.0.0.1',
         name: 'test',
         user: 'kid',
         pass: '123abc'
      })

      db.uri()  // => 'mongodb://kid:123abc@127.0.0.1:27017/test'
      ```
   """


   signs: [{
      name: '@uri()'
      more: """
         MongoDB URI 格式参考 [Connection String URI Format](https://docs.mongodb.com/manual/reference/connection-string/)
      """

      return:
         name: 'uri'
         type: 'string'
   }]