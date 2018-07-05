module.exports =

   name: 'popEnd(array, [count])'

   desc: """
      从 array 的末尾弹出 count 个 item
   """

   intro: """
      ```js
      array = ['a', 'b', 'c', 'd']
      item  = sai.popEnd(array)

      // array = ['a', 'b', 'c']
      // item  = 'd'



      array = ['a', 'b', 'c', 'd']
      items = sai.popEnd(array, 2)

      // array = ['a', 'b']
      // items = ['c', 'd']



      array = ['a', 'b', 'c', 'd']
      items = sai.popEnd(array, 5)

      // array = []
      // items = ['a', 'b', 'c', 'd']



      array = []
      item  = sai.popEnd(array)

      // array = []
      // item  = undefined



      array = []
      items = sai.popEnd(array, 2)

      // array = []
      // items = []
      ```
   """

   params: [{
      name: 'array'
      type: '*[]'
   },{
      name: 'count'
      type: 'number'
      desc: '弹出几个 item ？默认值：1'
      optional: true
   }]

   return:
      name: 'item | items'
      type: '* | *[]'
      desc: """
      * 若 count = 1，返回 item
      * 若 count > 1，返回 items
      """