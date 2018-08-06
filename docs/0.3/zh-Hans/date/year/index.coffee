module.exports =


   name: 'year'


   desc: """
      ```js
      year = sai.year(date)
      ```
   """


   signs: [{
      name: 'year( date )'
      desc: '获取年份'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'year'
         type: 'int'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]