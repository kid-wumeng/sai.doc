module.exports =

   name: 'mongo.Collection@findOne'

   desc: """
      ```js
      user = await db.col('users').findOne(1)
      ```
   """

   signs: [
      require('./sign_1')
      require('./sign_2')
   ]