module.exports =

   name: 'first(array)'

   desc: """
      获取 array 的第一个 item
   """

   text: """
      ```js
      array = ['a', 'b', 'c']

      sai.first(array)  // => 'a'
      ```
   """

   params: [{
      name: 'array'
      type: '*[]'
   }]

   return:
      name: 'first\'s item'
      type: '*'