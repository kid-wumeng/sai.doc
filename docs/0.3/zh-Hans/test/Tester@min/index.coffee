module.exports =


   name: 'Tester@min'


   desc: """
      ```js
      sai.test(2).min(1)     // pass
      sai.test(2).min(2)     // pass
      sai.test(2).min(3)     // fail，数字应该 ≥ 3

      sai.test('ab').min(1)  // pass
      sai.test('ab').min(2)  // pass
      sai.test('ab').min(3)  // fail，长度应该 ≥ 3
      ```
   """


   signs: [{
      name: '@min( min, [error] )'
      desc: '*数据*或者*数据长度*是否不低于 min ？'
      more: """
         使用 [sai.isMin](/isMin) 进行判定
         若值是必需的，请加上 [required()](/Tester@required)
      """

      params: [{
         name: 'min'
         type: 'number'
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