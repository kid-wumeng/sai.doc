module.exports =


   name: 'Duration@daysBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.daysBit()  // => 7
      ```
   """


   signs: [{
      name: '@daysBit()'
      desc: '获取时间段中的天位'

      return:
         name: 'days'
         type: 'int ≥ 0'
   }]