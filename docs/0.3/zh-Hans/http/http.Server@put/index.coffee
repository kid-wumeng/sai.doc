module.exports =


   name: 'http.Server@put'


   desc: """
      ```js
      server.put('/users/:id', (data) => {
         return data
      })
      ```
   """


   signs: [{
      name: '@put( path, callback )'
      desc: '处理 PUT 请求'

      params: [
         require('../_params/http.requestPath')
         require('../_params/http.handlerCallback')
      ]
   }]