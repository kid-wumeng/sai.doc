module.exports =


   name: 'http.Client@delete'


   desc: """
      ```js
      res = await client.delete('/users/1', data, options)
      ```
   """


   signs: [{
      name: '@delete( path, data, options )'
      desc: '发送 DELETE 请求'

      params: [
         require('../_params/http.requestPath')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]