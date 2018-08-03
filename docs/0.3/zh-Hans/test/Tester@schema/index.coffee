module.exports =


   name: 'Tester@schema'


   desc: """
      ```js
      schema = new Schema
      schema.format('user.name', (data) => /^\w+$/.test(data))

      sai.test('abc').schema(schema).string().min(3).format('user.name')
      ```
   """


   signs: [
      require('./sign_set.coffee')
      require('./sign_get.coffee')
   ]