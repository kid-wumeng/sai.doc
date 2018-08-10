module.exports =


   name: 'Duration@minutes'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.minutes()      // => 1134340
      duration.minutes(true)  // ≈> 1134340.61
      ```
   """


   signs: [{
      name: '@minutes( [float] )'
      desc: '获取时间段中一共有几分钟'

      params: [{
         name: 'float'
         type: 'boolean'
         default: false
         desc: '是否带小数 ？'
      }]

      return:
         name: 'minutes'
         type: 'number'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]