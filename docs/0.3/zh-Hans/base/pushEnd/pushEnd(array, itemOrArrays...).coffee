module.exports =

   name: 'pushEnd(array, itemOrArrays...)'

   desc: """
      向 array 的末尾添加 item 或 array
   """

   intro: """
      ```js
      array = ['a', 'b']
      count = sai.pushEnd(array, 'c')

      // array = ['a', 'b', 'c']
      // count = 3



      array = ['a', 'b']
      count = sai.pushEnd(array, 'c', 'd')

      // array = ['a', 'b', 'c', 'd']
      // count = 4



      array = ['a', 'b']
      count = sai.pushEnd(array, ['c', 'd'])

      // array = ['a', 'b', 'c', 'd']
      // count = 4



      array = ['a', 'b']
      count = sai.pushEnd(array, 'c', ['d', 'e'])

      // array = ['a', 'b', 'c', 'd', 'e']
      // count = 5
      ```
   """

   params: [{
      name: 'array'
      type: '*[]'
      desc: '目标数组'
   },{
      optional: true
      name: 'itemOrArrays...'
      type: '*...'
      desc: '希望添加的 item 或 array'
   }]

   return:
      name: 'count'
      type: 'number'
      desc: '添加后，array 中 item 的数量'