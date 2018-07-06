module.exports =

   name: 'pushStart(array, itemOrArrays...)'

   desc: """
      向 array 的开头添加 item 或 array
   """

   detail: """
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

      本函数会影响目标数组，若不期望如此，可以尝试 [sai.concat](/concat)
   """

   params: [{
      name: 'array'
      type: '*[]'
      desc: '目标数组'
   },{
      name: 'itemOrArrays...'
      type: '* | *[]'
      desc: '期望添加的 item 或 array'
   }]

   return:
      name: 'count'
      type: 'number'
      desc: '添加后，array 中 item 的数量'