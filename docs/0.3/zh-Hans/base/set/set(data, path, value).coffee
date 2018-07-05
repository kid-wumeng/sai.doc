module.exports =

   name: 'set(data, path, value)'

   desc: """
      设置 data 中路径为 path 的值
   """

   detail: """
      一个简单的例子：

      ```js
      data = {
         menu: {
            fruits: ['apple', 'orange']
         }
      }

      sai.set(data, 'chef.name', 'kid')
      sai.set(data, 'menu.fruits[1]',      'banana')
      sai.set(data, ['menu', 'fruits', 2], 'tomato')

      // data = {
      //    chef: {
      //       name: 'kid'
      //    },
      //    menu: {
      //       fruits: ['apple', 'banana', 'tomato']
      //    }
      // }
      ```

      如上所见，若路径不存在，set 会自行创建

      路径操作符可以参考 [sai.get](/get)
   """

   params: [{
      name: 'data'
      type: 'object'
      desc: '数据对象'
   },{
      name: 'path'
      type: 'string | number | array'
      desc: '路径或下标'
   },{
      name: 'value'
      type: '*'
      desc: '希望设置的值'
   }]