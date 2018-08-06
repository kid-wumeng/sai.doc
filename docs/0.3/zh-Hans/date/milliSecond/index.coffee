module.exports =


   name: 'milliSecond'


   desc: """
      ```js
      milliSecond = sai.milliSecond(date)
      ```
   """


   signs: [{
      name: 'milliSecond( date )'
      desc: '获取毫秒数 ( 0 - 999 )'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'milliSecond'
         type: 'int, 0 ~ 999'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]