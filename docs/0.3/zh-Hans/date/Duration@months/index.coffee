module.exports =


   name: 'Duration@months'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.months()      // => 25
      duration.months(true)  // ≈> 25.89
      ```
   """


   signs: [{
      name: '@months( [float] )'
      desc: '获取时间段中一共有几个月'

      params: [{
         name: 'float'
         type: 'boolean'
         default: false
         desc: '是否带小数 ？'
      }]

      return:
         name: 'months'
         type: 'number'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]