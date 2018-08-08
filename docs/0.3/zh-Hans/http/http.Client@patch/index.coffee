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
         require('../_params/http.requestPath')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]