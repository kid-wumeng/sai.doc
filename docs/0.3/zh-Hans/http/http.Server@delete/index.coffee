module.exports =


   name: 'http.Server@delete'


   desc: """
      ```js
      server.delete('/users/:id', (data) => {
         return data
      })
      ```
   """


   signs: [{
      name: '@delete( path, callback )'
      desc: '处理 DELETE 请求'

      params: [
         require('../_params/http.requestPath')
         require('../_params/http.handlerCallback')
      ]
   }]