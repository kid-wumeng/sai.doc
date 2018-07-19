module.exports =


   name: 'first'


   desc: """
      ```js
      item = sai.first(array)
      ```
   """


   signs: [{
      name: 'first( array )'
      desc: '获取 array 的第一个元素'

      params: [{
         name: 'array'
         type: 'Array-like'
      }]

      return:
         name: 'item'
         type: '*'
         desc: '第一个元素'
   }]


   more: """
      # 基本用法

      ```js
      sai.first([1, 2, 3])  // => 1
      sai.first('123')      // => '1'
      sai.first(123)        // => undefined
      sai.first([])         // => undefined
      sai.first(undefined)  // => undefined
      ```
   """