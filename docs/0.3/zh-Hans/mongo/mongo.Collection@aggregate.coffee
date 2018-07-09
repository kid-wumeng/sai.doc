module.exports =


   name: 'mongo.Collection@aggregate'


   desc: """
      ```js
      results = await db.col('users').aggregate([
         { $match: { status: "A" } },
         { $group: { _id: "$cust_id", total: { $sum: "$amount" } } },
         { $sort: { total: -1 } },
         { $limit: 2 }
      ],{
         cursor: { batchSize: 0 }
      })
      ```
   """


   signs: [{
      async: true
      name: '@aggregate( pipeline, options )'
      desc: '聚合演算'
      more: '关于 [MongoDB aggregate](https://docs.mongodb.com/manual/reference/method/db.collection.aggregate/) 的介绍'

      params: [{
         name: 'pipeline'
         type: 'Array'
      },{
         name: 'options'
         type: 'object'
         default: {}
      }]

      return:
         name: 'results'
         type: 'Array'
   }]