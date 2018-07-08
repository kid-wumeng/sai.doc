module.exports =


   name: 'mongo.Collection@insertOne'


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
      async: true
      name: '@insertOne( doc )'
      desc: '插入一条文档'

      params: [{
         name: 'doc'
         type: 'plain-object'
      }]

      return:
         require('./_doc')
   }]