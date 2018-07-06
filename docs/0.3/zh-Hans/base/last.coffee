module.exports =


   name: 'last'


   signs: [{
      name: 'last(array)'
      desc: '获取 array 的最后一个 item'

      params: [{
         name: 'array'
         type: '*[]'
      }]

      return:
         name: 'last\'s item'
         type: '*'
   }]


   detail: """
      ```js
      array = ['a', 'b', 'c']

      sai.last(array)  // => 'c'
      ```
   """