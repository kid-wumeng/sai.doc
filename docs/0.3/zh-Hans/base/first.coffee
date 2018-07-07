module.exports =


   name: 'first'


   desc: """
      ```js
      firstItem = sai.first(array)
      ```
   """


   signs: [{
      name: 'first( array )'
      desc: '获取 array 的第一个元素'

      params: [{
         name: 'array'
         type: 'Array'
      }]

      return:
         name: 'item'
         type: '* | undefined'
         desc: '第一个元素'

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]


   more: """
      # 基本用法

      ```js
      array = ['a', 'b', 'c']

      sai.first(array)  // => 'a'
      ```
   """