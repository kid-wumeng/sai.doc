module.exports =


   name: 'between'


   desc: """
      ```js
      from = new Date(2016, 3, 15)
      to   = new Date(2018, 5, 12)
      
      duration = sai.between(from, to)
      ```
   """


   signs: [{
      name: 'between( from, to )'
      desc: '生成 Duration 对象'

      params: [{
         name: 'from'
         type: 'Date'
      },{
         name: 'to'
         type: 'Date'
      }]

      return:
         name: 'duration'
         type: 'sai.Duration'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]