module.exports =


   name: 'ms'


   desc: """
      ```js
      sai.ms('7 days')  // => 604800000
      ```
   """


   signs: [{
      name: 'ms( string )'
      desc: ''

      params: [{
         name: 'string'
         type: 'string'
      }]

      return:
         name: 'milliSeconds'
         type: 'int'
   }]