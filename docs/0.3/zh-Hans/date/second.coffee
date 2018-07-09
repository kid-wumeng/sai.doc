module.exports =


   name: 'second'


   desc: """
      ```js
      second = sai.second(date)
      ```
   """


   signs: [{
      name: 'second( date )'
      desc: '获取秒数 ( 0 - 59 )'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'second'
         type: 'int, 0 ~ 59'
   }]