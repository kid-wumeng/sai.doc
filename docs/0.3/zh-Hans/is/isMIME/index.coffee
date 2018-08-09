module.exports =


   name: 'isMIME'


   desc: """
      ```js
      sai.isMIME(file, 'image/png')
      sai.isMIME(file, ['image/png', 'image/jpeg'])
      ```
   """


   signs: [
      require('./sign_1')
      require('./sign_2')
   ]