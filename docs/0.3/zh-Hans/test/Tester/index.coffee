module.exports =


   name: 'Tester'


   desc: """
      ```js
      data = {
         name: 'kid'
         age: 18
      }

      nameTester = new Tester(data, 'name')
      ageTester = new Tester(data, 'age')

      nameTester.string().min(3, 'name should be at least 3 characters')
      ageTester.natural()
      ```
   """


   signs: [{
      name: 'new Tester( data, [path] )'
      desc: '测试执行者类'

      more: """
         **任何时候，都不推荐直接使用本类**
         请使用 [sai.test](/test) 或 [sai.Schema@test](/Schema@test) 创建实例
      """

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