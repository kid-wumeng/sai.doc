module.exports =


   name: 'week'


   desc: """
      ```js
      week = sai.week(date)
      ```
   """


   signs: [{
      name: 'week( date )'
      desc: '获取星期数 ( 0 - 6 )'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'week'
         type: 'int, 0 ~ 6'
   }]