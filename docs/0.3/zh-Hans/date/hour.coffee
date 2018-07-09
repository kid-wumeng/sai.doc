module.exports =


   name: 'hour'


   desc: """
      ```js
      hour = sai.hour(date)
      ```
   """


   signs: [{
      name: 'hour( date )'
      desc: '获取小时数 ( 0 - 23 )'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'hour'
         type: 'int ≥ 0'
   }]