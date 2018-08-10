module.exports =


   name: 'Duration@monthsBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.monthsBit()  // => 1
      ```
   """


   signs: [{
      name: '@monthsBit()'
      desc: '获取时间段中的月位'

      return:
         name: 'months'
         type: 'int ≥ 0'
   }]