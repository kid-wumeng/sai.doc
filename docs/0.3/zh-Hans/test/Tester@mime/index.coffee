module.exports =


   name: 'Tester@mime'


   desc: """
      ```js
      sai.test(file).mime('image/png')
      sai.test(file).mime(['image/png', 'image/jpeg'])
      ```
   """


   signs: [
      require('./sign_1')
      require('./sign_2')
   ]