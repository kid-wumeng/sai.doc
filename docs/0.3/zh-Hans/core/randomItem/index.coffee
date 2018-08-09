module.exports =


   name: 'randomItem'


   desc: """
      ```js
      array = ['a', 'b', 'c']
      item  = sai.randomItem(array, isPop = true)

      // For example,
      // array = ['a', 'c']
      // item  = 'b'
      ```
   """


   signs: [{
      name: 'randomItem( arrayLike, [isPop] )'
      desc: '随机选取一个元素'

      params: [{
         name: 'arrayLike'
         type: 'Array-like'
      },{
         name: 'isPop'
         type: 'boolean'
         desc: '是否同时从原数组中删除元素 ？'
         default: false
      }]

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]