module.exports =


   name: 'del'


   signs: [{
      name: 'del(data, path)'
      desc: '删除 data 中路径为 path 的属性值'
      params: [{
         name: 'data'
         type: 'object'
      },{
         name: 'path'
         type: 'string'
         desc: '无需事先判断属性是否存在，静默实施，存不存在无所谓'
      }]
   }]


   detail: """
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