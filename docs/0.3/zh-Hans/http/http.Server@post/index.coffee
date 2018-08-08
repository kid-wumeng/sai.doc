module.exports =


   name: 'http.Server@post'


   desc: """
      ```js
      server.post('/users/:id', (data) => {
         return data
      })
      ```
   """


   signs: [{
      name: '@post( path, callback )'
      desc: '处理 POST 请求'

      params: [
         require('../_params/http.requestPath')
         require('../_params/http.handlerCallback')
      ]
   }]