module.exports =


   name: 'del'


   desc: """
      ```js
      sai.del(data, 'a.b.c[1]')
      ```
   """


   signs: [{
      name: 'del(data, path)'
      desc: '删除 data 中路径为 path 的属性值'

      params: [{
         name: 'data'
         type: 'object'
      },{
         name: 'path'
         type: 'string'
         desc: '事先无需检测属性存在与否，即使不存在，也不会有任何副作用'
      }]

      errors: [{
         name: 'INVALID_TYPE'
         desc: 'data 或 path 类型不正确'
      }]
   }]


   more: """
      # 基本用法

      ```js
      data = {
         a: {
            b: ['item1', 'item2']
         }
      }



      sai.del(data, 'a.b.0')  // 点号语法
      sai.del(data, 'a.b[0])  // 括号语法

      // data = {
      //    a: {
      //       b: [undefined, 'item2']
      //    }
      // }



      sai.del(data, 'a.b')

      // data = {
      //    a: {}
      // }
      ```
   """