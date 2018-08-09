module.exports =

   name: 'mongo.Collection@findOneAndUpdate'

   desc: """
      ```js
      user = await db.col('users').findOneAndUpdate(id, {
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