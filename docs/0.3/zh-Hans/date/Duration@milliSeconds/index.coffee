module.exports =


   name: 'Duration@milliSeconds'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.milliSeconds()  // => 68060436877
      ```
   """


   signs: [{
      name: '@milliSeconds()'
      desc: '获取时间段中一共有几毫秒'

      return:
         name: 'milliSeconds'
         type: 'number'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]