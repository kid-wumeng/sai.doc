module.exports =


   name: 'last'


   desc: """
      ```js
      lastItem = sai.last(array)
      ```
   """


   signs: [{
      name: 'last( array )'
      desc: '获取 array 的最后一个元素'

      params: [{
         name: 'array'
         type: 'Array-like'
      }]

      return:
         name: 'item'
         type: '*'
         desc: '最后一个元素'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]


   more: """
      # 基本用法

      ```js
      array = ['a', 'b', 'c']

      sai.last(array)  // => 'c'
      ```
   """