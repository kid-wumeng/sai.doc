module.exports =


   name: 'http.Client@patch'


   desc: """
      ```js
      res = await client.patch('/users/1', data, options)
      ```
   """


   signs: [{
      name: '@patch( path, data, options )'
      desc: '发送 PATCH 请求'

      params: [
         require('./params/http.requestPath')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]