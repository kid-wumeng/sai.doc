module.exports =


   name: 'Schema@rule'


   desc: """
      ```js
      schema = new Schema()

      schema.rule('user.id',   (data) => sai.test(data).name('id').id())
      schema.rule('user.name', (data) => sai.test(data).name('name').string().min(3).check((data)=>/^\w+$/.test(data)))
      schema.rule('user.age',  (data) => sai.test(data).name('age').natural())

      schema.rule('user', (data) => {
         schema.test(data).required().plainObject()
         schema.test(data, 'id').required().rule('user.id')
         schema.test(data, 'name').required().rule('user.name')
         schema.test(data, 'age').rule('user.age')
      })
      ```
   """


   signs: [
      require('./sign_set.coffee')
      require('./sign_get.coffee')
   ]