module.exports =


   name: 'Duration@milliSecondsBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.milliSecondsBit()  // => 877
      ```
   """


   signs: [{
      name: '@milliSecondsBit()'
      desc: '获取时间段中的毫秒位'

      return:
         name: 'milliSeconds'
         type: 'int ≥ 0'
   }]