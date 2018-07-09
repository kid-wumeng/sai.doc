module.exports =


   name: 'day'


   desc: """
      ```js
      day = sai.day(date)
      ```
   """


   signs: [{
      name: 'day( date )'
      desc: '获取日期'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'day'
         type: 'int ≥ 1'
   }]