module.exports =


   name: 'Duration@weeks'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.weeks()      // => 112
      duration.weeks(true)  // ≈> 112.53
      ```
   """


   signs: [{
      name: '@weeks( [float] )'
      desc: '获取时间段中一共有几星期'

      params: [{
         name: 'float'
         type: 'boolean'
         default: false
         desc: '是否带小数 ？'
      }]

      return:
         name: 'weeks'
         type: 'number ≥ 0'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]