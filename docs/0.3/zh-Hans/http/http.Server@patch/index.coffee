module.exports =


   name: 'http.Server@patch'


   desc: """
      ```js
      server.patch('/users/:id', (data) => {
         return data
      })
      ```
   """


   signs: [{
      name: '@patch( path, callback )'
      desc: '处理 PATCH 请求'

      params: [
         require('../_params/http.requestPath')
         require('../_params/http.handlerCallback')
      ]
   }]