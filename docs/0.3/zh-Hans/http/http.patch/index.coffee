module.exports =


   name: 'http.patch'


   desc: """
      ```js
      res = await sai.http.patch(url, data, options)
      ```
   """


   signs: [{
      name: 'http.patch( url, data, options )'
      desc: '发送 PATCH 请求'

      params: [
         require('../_params/http.requestUrl')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]