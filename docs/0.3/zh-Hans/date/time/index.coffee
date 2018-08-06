module.exports =


   name: 'time'


   desc: """
      ```js
      time = sai.time(date)
      ```
   """


   signs: [{
      name: 'time( date )'
      desc: '获取时间戳 ( 格林威治时间1970年01月01日00时00分00秒起至现在的总秒数 )'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'time'
         type: 'int ≥ 0'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]