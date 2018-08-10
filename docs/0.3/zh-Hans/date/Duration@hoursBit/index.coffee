module.exports =


   name: 'Duration@hoursBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.hoursBit()  // => 17
      ```
   """


   signs: [{
      name: '@hoursBit()'
      desc: '获取时间段中的小时位'

      return:
         name: 'hours'
         type: 'int ≥ 0'
   }]