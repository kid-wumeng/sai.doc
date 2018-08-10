module.exports =


   name: 'Duration@yearsBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.yearsBit()  // => 2
      ```
   """


   signs: [{
      name: '@yearsBit()'
      desc: '获取时间段中的年位'

      return:
         name: 'years'
         type: 'int ≥ 0'
   }]