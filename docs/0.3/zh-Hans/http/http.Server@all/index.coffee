module.exports =


   name: 'http.Server@all'


   desc: """
      ```js
      server.all('/users/:id', (data) => {
         return data
      })
      ```
   """


   signs: [{
      name: '@all( path, callback )'
      desc: '处理请求'

      params: [
         require('../_params/http.requestPath')
         require('../_params/http.handlerCallback')
      ]
   }]