module.exports =


   name: 'http.get'


   desc: """
      ```js
      res = await sai.http.get(url, data, options)
      ```
   """


   signs: [{
      name: 'http.get( url, data, options )'
      desc: '发送 GET 请求'

      params: [
         require('../_params/http.requestUrl')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]