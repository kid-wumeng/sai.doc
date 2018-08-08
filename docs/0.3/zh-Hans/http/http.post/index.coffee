module.exports =


   name: 'http.post'


   desc: """
      ```js
      res = await sai.http.post(url, data, options)
      ```
   """


   signs: [{
      name: 'http.post( url, data, options )'
      desc: '发送 POST 请求'

      params: [
         require('../_params/http.requestUrl')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]