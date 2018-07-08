module.exports =


   name: 'Mongo.Collection@insertOne'


   desc: """
      ```js
      user = await db.col('users').insertOne({
         name: 'kid',
         age: 18
      })

      // user = {
      //    _id: ObjectId("5b19f588e2096c3b134993c7"),
      //    id: 1,
      //    name: 'kid',
      //    age: 18,
      //    createDate: ISODate("2018-06-10T12:33:13.910Z")
      // }
      ```
   """


   signs: [{
      name: '@insertOne( data )'
      desc: '是否为 Array ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望判定的值'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      ```js
      sai.isArray(new Array)               // => true
      sai.isArray([1, 2, 3])               // => true

      sai.isArray(arguments)               // => false
      sai.isArray('abc')                   // => false
      sai.isArray(new Buffer('abc'))       // => false
      sai.isArray(document.body.children)  // => false
      ```
   """