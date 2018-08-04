module.exports =


   name: 'Schema@format'


   desc: """
      ```js
      schema = new Schema()

      schema.format('user.id',   (data) => sai.isID(data))
      schema.format('user.name', (data) => /^\w+$/.test(data))
      ```
   """


   signs: [
      require('./sign_set.coffee')
      require('./sign_get.coffee')
   ]