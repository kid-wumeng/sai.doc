module.exports =


   name: 'Duration@format'


   desc: """
      ```js
      from = new Date(2016, 3, 15, 12, 35, 8, 789)
      to   = new Date(2018, 5, 12, 6, 15, 45, 666)

      duration = sai.between(from, to)

      duration.format('yyyy years ago')  // => '2 years ago'
      duration.format('mm months ago')   // => '25 months ago'
      duration.format('dd days ago')     // => '787 days ago'
      duration.format('hh hours ago')    // => '18905 hours ago'
      duration.format('ii minutes ago')  // => '1134340 minutes ago'
      duration.format('ss seconds ago')  // => '68060436 seconds ago'
      ```
   """


   signs: [{
      name: '@format( format )'
      desc: '格式化时间量'

      params: [{
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