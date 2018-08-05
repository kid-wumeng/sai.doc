module.exports =

   name: 'mongo.Collection@updateOne'

   desc: """
      ```js
      await db.col('users').updateOne(id, {
         name: 'kid',
         $inc: {
            age: 1
         }
      })
      ```
   """

   signs: [
      require('./sign_1')
      require('./sign_2')
   ]