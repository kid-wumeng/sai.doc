module.exports =


   name: 'http.Server@get'


   desc: """
      ```js
      server.get('/users/:id', (data) => {
         return data
      })
      ```
   """


   signs: [{
      name: '@get( path, callback )'
      desc: '处理 GET 请求'

      params: [
         require('./params/http.requestPath')
         require('./params/http.handlerCallback')
      ]
   }]