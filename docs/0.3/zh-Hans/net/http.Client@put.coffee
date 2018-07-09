module.exports =


   name: 'http.Client@put'


   desc: """
      ```js
      res = await client.put('/users/1', data, options)
      ```
   """


   signs: [{
      name: '@put( path, data, options )'
      desc: '发送 PUT 请求'

      params: [
         require('./params/http.requestPath')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]