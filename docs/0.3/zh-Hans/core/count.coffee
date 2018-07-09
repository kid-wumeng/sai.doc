module.exports =


   name: 'count'


   desc: """
      ```js
      count = sai.count(array, (item, i) => {
         return true
      })

      count = sai.count(object, (value, key) => {
         return true
      })
      ```
   """


   signs: [{
      name: 'count( data, callback )'
      desc: '获取 array 的最后一个元素'

      params: [{
         name: 'data'
         type: 'object, Array-like'
      },{
         name: 'callback'
         type: 'function'
      }]

      return:
         name: 'count'
         type: 'int ≥ 0'

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]


   more: """
      # 基本用法
   """