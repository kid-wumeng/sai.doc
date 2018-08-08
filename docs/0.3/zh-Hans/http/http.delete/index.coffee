module.exports =


   name: 'http.delete'


   desc: """
      ```js
      res = await sai.http.delete(url, data, options)
      ```
   """


   signs: [{
      name: 'http.delete( url, data, options )'
      desc: '发送 DELETE 请求'

      params: [
         require('../_params/http.requestUrl')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]