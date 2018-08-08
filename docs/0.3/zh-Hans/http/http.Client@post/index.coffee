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
         require('../_params/http.requestPath')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]