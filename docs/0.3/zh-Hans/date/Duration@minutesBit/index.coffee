module.exports =


   name: 'Duration@minutesBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.minutesBit()  // => 40
      ```
   """


   signs: [{
      name: '@minutesBit()'
      desc: '获取时间段中的分钟位'

      return:
         name: 'minutes'
         type: 'int ≥ 0'
   }]