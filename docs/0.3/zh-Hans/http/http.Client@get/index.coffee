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
         require('../_params/http.requestPath')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]