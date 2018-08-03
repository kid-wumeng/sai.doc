module.exports =


   name: 'test'


   desc: """
      ```js
      data = {
         name: 'kid'
         age: 18
      }

      sai.test(data, 'name').string().min(3, 'name should be at least 3 characters')
      sai.test(data, 'age').natural()
      ```
   """


   signs: [{
      name: 'test( data, [path] )'
      desc: '创建一个 Tester 实例，并注入默认 Schema'

      params: [{
         name: 'data'
         type: '*'
      },{
         name: 'path'
         type: 'string'
         default: ''
         desc: '可选，使用 [sai.get](/get) 获取需要测试的值'
      }]

      return:
         name: 'tester'
         type: 'sai.Tester'
   }]


   more: """
      # 基本用法

      本质上是`new Tester( data, path )`的快捷方式

      ```js
      tester = sai.test(data, path)
      ```

      唯一的区别是，会自动注入一个默认的 Schema，使之能够使用`format('email')`之类的预设方案。与以下代码等价：

      ```js
      tester = new sai.Tester(data, path)
      schema = new sai.Schema

      tester.schema(schema)
      ```
   """