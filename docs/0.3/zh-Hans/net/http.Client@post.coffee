module.exports =


   name: 'http.Client@post'


   desc: """
      ```js
      res = await client.post('/users/1', data, options)
      ```
   """


   signs: [{
      name: '@post( path, data, options )'
      desc: '发送 POST 请求'

      params: [
         require('./params/http.requestPath')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]