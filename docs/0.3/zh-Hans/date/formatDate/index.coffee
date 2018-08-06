module.exports =


   name: 'formatDate'


   desc: """
      ```js
      date = new Date(2018, 3, 12, 6, 15, 45)
      sai.formatDate(date, 'YYYY-MM-DD HH:II:SS')  // => '2018-04-12 06:15:45'
      ```
   """


   signs: [{
      name: 'formatDate( date, format )'
      desc: '日期格式化'

      params: [{
         name: 'date'
         type: 'Date'
      },{
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