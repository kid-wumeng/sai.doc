module.exports =


   name: 'ms'


   desc: """
      ```js
      sai.ms(432000000)  // => '5 days'
      sai.ms('5 days')   // => 432000000
      ```
   """


   signs: [
      require('./sign_1')
      require('./sign_2')
   ]