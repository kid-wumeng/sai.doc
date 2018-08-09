module.exports =


   name: 'min'


   desc: """
      ```js
      sai.min(1.2, -2.4, 3.6)  // => -2.4
      ```
   """


   signs: [{
      name: 'min( number... )'
      desc: '获取最小值'

      params: [{
         name: 'number'
         type: 'number'
      }]
   }]


   return:
      name: 'min'
      type: 'number'