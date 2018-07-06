module.exports =


   name: 'first'


   signs: [{
      name: 'first(array)'
      desc: '获取 array 的第一个元素'

      params: [{
         name: 'array'
         type: 'Array'
      }]

      return:
         name: 'item'
         type: '* | undefined'
         desc: '第一个元素'

      throws: [{
         name: 'INVALID_TYPE'
         desc: 'array 类型不正确'
      }]
   }]


   detail: """
      # 基本用法

      ```js
      array = ['a', 'b', 'c']

      sai.first(array)  // => 'a'
      ```
   """