module.exports =

   name: 'last(array)'

   desc: """
      获取 array 的最后一个 item
   """

   text: """
      ```js
      array = ['a', 'b', 'c']

      sai.last(array)  // => 'c'
      ```
   """

   params: [{
      name: 'array'
      type: '*[]'
   }]

   return:
      name: 'last\'s item'
      type: '*'