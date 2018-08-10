module.exports =


   name: 'Duration@formatBit'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.formatBit('yyyy-mm-dd hh:ii:ss')  // => '2-1-7 17:40:36'
      duration.formatBit('YYYY-MM-DD HH:II:SS')  // => '0002-01-07 17:40:36'
      ```
   """


   signs: [{
      name: '@formatBit( format )'
      desc: '格式化时间位'

      params: [{
         name: 'format'
         type: 'string'
      }]

      return:
         name: 'string'
         type: 'string'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]