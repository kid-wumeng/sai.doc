module.exports =

   name: 'del(data, path)'

   desc: """
      删除 data 中路径为 path 的属性值
   """

   intro: """
      无论属性值存不存在
   """

   detail: """
      一个简单的例子：

      ```js
      data = {
         chef: {
            name: 'kid'
         },
         menu: {
            fruits: ['apple', 'orange']
         }
      }

      sai.del(data, 'chef.name')
      sai.del(data, 'menu.fruits[1]')
      sai.del(data, ['menu', 'fruits', 2])

      // data = {
      //    chef: {},
      //    menu: {
      //       fruits: ['apple']
      //    }
      // }
      ```

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
   }]