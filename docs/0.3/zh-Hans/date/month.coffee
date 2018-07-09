module.exports =


   name: 'month'


   desc: """
      ```js
      month = sai.month(date)
      ```
   """


   signs: [{
      name: 'month( date )'
      desc: '获取月份，注意，从 1 开始！'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'month'
         type: 'int ≥ 1'
   }]