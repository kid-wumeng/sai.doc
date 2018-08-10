module.exports =


   name: 'Duration@weeksBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.weeksBit()  // => 0
      ```
   """


   signs: [{
      name: '@weeksBit()'
      desc: '获取时间段中的星期位'

      return:
         name: 'weeks'
         type: 'int ≥ 0'
   }]