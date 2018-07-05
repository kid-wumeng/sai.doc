module.exports =

   name: 'pushStart(array, itemOrArrays...)'

   desc: """
      向 array 的开头添加 item 或 array
   """

   intro: """
      ```js
      array = ['a', 'b']
      count = sai.pushStart(array, 'c')

      // array = ['c', 'a', 'b']
      // count = 3



      array = ['a', 'b']
      count = sai.pushStart(array, 'c', 'd')

      // array = ['c', 'd', 'a', 'b']
      // count = 4



      array = ['a', 'b']
      count = sai.pushStart(array, ['c', 'd'])

      // array = ['c', 'd', 'a', 'b']
      // count = 4



      array = ['a', 'b']
      count = sai.pushStart(array, 'c', ['d', 'e'])

      // array = ['c', 'd', 'e', 'a', 'b']
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