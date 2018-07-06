module.exports =


   name: 'last'


   signs: [{
      name: 'last(array)'
      desc: '获取 array 的最后一个元素'

      params: [{
         name: 'array'
         type: 'Array'
      }]

      return:
         name: 'item'
         type: '* | undefined'
         desc: '最后一个元素'

      errors: [{
         name: 'INVALID_TYPE'
         desc: 'array 类型不正确'
      }]
   }]


   detail: """
      ```js
      array = ['a', 'b', 'c']

      sai.last(array)  // => 'c'
      ```
   """