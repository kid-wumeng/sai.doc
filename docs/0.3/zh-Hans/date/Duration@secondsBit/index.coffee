module.exports =


   name: 'Duration@secondsBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.secondsBit()  // => 36
      ```
   """


   signs: [{
      name: '@secondsBit()'
      desc: '获取时间段中的秒位'

      return:
         name: 'seconds'
         type: 'int ≥ 0'
   }]