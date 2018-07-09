module.exports =


   name: 'minute'


   desc: """
      ```js
      minute = sai.minute(date)
      ```
   """


   signs: [{
      name: 'minute( date )'
      desc: '获取分钟数 ( 0 - 59 )'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'minute'
         type: 'int ≥ 0'
   }]