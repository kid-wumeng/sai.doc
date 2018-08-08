module.exports =


   name: 'http.Client@url'


   desc: """
      ```js
      url = client.url('/users/1')
      ```
   """


   signs: [{
      name: '@url( path )'
      desc: '与 urlBase 一起构造 url'

      params: [
         require('./params/http.requestPath')
      ]

      return:
         name: 'url'
         type: 'string'
   }]