module.exports =


   name: 'Schema@test'


   desc: """
      ```js
      schema = new Schema()
      schema.format('age', (data) => sai.isNatural(data))

      data = {
         name: 'kid'
         age: 18
      }

      schema.test(data, 'name').string().min(3, 'name should be at least 3 characters')
      schema.test(data, 'age').format('age')
      ```
   """


   signs: [{
      name: '@test( data, [path] )'
      desc: '创建一个 Tester 实例，并注入本 Schema'

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