module.exports =


   name: 'http.Client@get'


   desc: """
      ```js
      res = await client.get('/users/1', data, options)
      ```
   """


   signs: [{
      name: '@get( path, data, options )'
      desc: '发送 GET 请求'

      params: [
         require('./params/http.requestPath')
         require('./params/http.requestData')
         require('./params/http.requestConfig')
      ]

      return:
         require('./return/http.response')
   }]