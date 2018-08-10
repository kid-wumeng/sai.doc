module.exports =


   name: 'Duration@years'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.years()      // => 2
      duration.years(true)  // ≈> 2.16
      ```
   """


   signs: [{
      name: '@years( [float] )'
      desc: '获取时间段中一共有几年'

      params: [{
         name: 'float'
         type: 'boolean'
         default: false
         desc: '是否带小数 ？'
      }]

      return:
         name: 'years'
         type: 'number ≥ 0'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]