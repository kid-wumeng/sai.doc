module.exports =


   name: 'formatDate'


   desc: """
      ```js
      formatDate = sai.formatDate(date, 'YYYY-MM-DD HH:II:SS')
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
   }]