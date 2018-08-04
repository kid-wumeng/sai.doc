module.exports =


   name: 'Tester@rule'


   desc: """
      ```js
      schema = new Schema()

      schema.rule('user.id',   (data) => sai.test(data).name('id').id())
      schema.rule('user.name', (data) => sai.test(data).name('name').string().min(3).check((data)=>/^\w+$/.test(data)))
      schema.rule('user.age',  (data) => sai.test(data).name('age').natural())

      schema.rule('user', (data) => {
         schema.test(data).required().plainObject()
         schema.test(data, 'id').required().rule('user.id')
         schema.test(data, 'name').required().rule('user.name')
         schema.test(data, 'age').rule('user.age')
      })

      user1 = {
         id: 1,
         name: 'kid'
      }

      user2 = {
         id: 2
         name: '---'
         age: 18
      }

      schema.test(user1).rule('user')  // pass
      schema.test(user2).rule('user')  // fail，名字不符合格式要求
      ```
   """


   signs: [{
      name: '@rule( rule, [error] )'
      desc: '是否可以通过指定规则集 ？'
      more: """
         若值是必需的，请加上 [required()](/Tester@required)

         规则需要你使用 Schema 来定义，请参考 [sai.Schema@rule](/Schema@rule)
      """

      params: [{
         name: 'rule'
         type: 'string'
      },{
         name: 'error'
         type: '*'
         optional: true
      }]

      return:
         name: 'tester'
         type: 'sai.Tester'
         desc: 'this - 支持方法链'

      errors: [
         require('../../errors').INVALID_PARAMS
         require('../../errors').INVALID_DATA
      ]
   }]