module.exports =

   name: 'popEnd(array, [count])'

   desc: """
      弹出 array 最后面的 count 个 item
   """

   intro: """
      ```js
      array = [1, 2, 3, 4, 5]
      item  = sai.popEnd(array)

      // item  = 5
      // array = [1, 2, 3, 4]


      array = [1, 2, 3, 4, 5]
      items = sai.popEnd(array, 3)

      // items = [3, 4, 5]
      // array = [1, 2]


      array = [1, 2, 3, 4, 5]
      items = sai.popEnd(array, 7)

      // items = [1, 2, 3, 4, 5]
      // array = []
      ```
   """

   params: [{
      name: 'array'
      type: '*[]'
   },{
      optional: true
      name: 'count'
      type: 'number'
      desc: '弹出几个 item ？默认值：1'
   }]

   return:
      name: 'item | items'
      type: '* | *[]'
      desc: """
      * 若 count = 1，返回 item
      * 若 count > 1，返回 items
      """