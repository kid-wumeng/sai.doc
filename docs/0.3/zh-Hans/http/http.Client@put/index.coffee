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
         require('../_params/http.requestPath')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]