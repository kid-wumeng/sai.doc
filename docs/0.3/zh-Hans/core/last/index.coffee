module.exports =


   name: 'last'


   desc: """
      ```js
      item = sai.last(array)
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
   }]


   more: """
      # 基本用法

      ```js
      sai.last([1, 2, 3])  // => 3
      sai.last('123')      // => '3'
      sai.last(123)        // => undefined
      sai.last([])         // => undefined
      sai.last(undefined)  // => undefined
      ```
   """