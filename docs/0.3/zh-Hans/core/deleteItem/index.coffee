module.exports =


   name: 'deleteItem'


   desc: """
      ```js
      array = ['a', 'b', 'c']
      sai.deleteItem(array, 1)  // array = ['a', 'c']
      ```
   """


   signs: [{
      name: 'deleteItem( arrayLike, index )'
      desc: '删除指定元素'

      params: [{
         name: 'arrayLike'
         type: 'Array-like'
      },{
         name: 'index'
         type: 'int ≥ 0'
      }]

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]