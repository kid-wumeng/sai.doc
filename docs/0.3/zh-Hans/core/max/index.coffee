module.exports =


   name: 'max'


   desc: """
      ```js
      sai.max(-1.2, 2.4, -3.6)  // => 2.4
      ```
   """


   signs: [{
      name: 'max( number... )'
      desc: '获取最大值'

      params: [{
         name: 'number'
         type: 'number'
      }]
   }]


   return:
      name: 'max'
      type: 'number'