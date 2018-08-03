module.exports =


   name: 'Tester@name'


   desc: """
      ```js
      data = {
         name: 'kid'
         age: 18
      }

      sai.test(data, 'name').name('name').string().min(3)
      sai.test(data, 'age').name('age').natural()
      ```
   """


   signs: [
      require('./sign_set.coffee')
      require('./sign_get.coffee')
   ]