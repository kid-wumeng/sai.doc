module.exports =

   name: 'mongo.Collection@deleteOne'

   desc: """
      ```js
      await db.col('users').deleteOne(id)
      ```
   """

   signs: [
      require('./sign_1')
      require('./sign_2')
   ]