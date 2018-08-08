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
         require('./params/http.requestPath')
         require('./params/http.handlerCallback')
      ]
   }]