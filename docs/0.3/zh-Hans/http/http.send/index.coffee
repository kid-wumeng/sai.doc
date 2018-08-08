module.exports =


   name: 'http.send'


   desc: """
      ```js
      res = await sai.http.send({ method: 'get', url, data, config })
      ```
   """


   signs: [{
      name: '@send( options )'
      desc: '发送请求'

      params: [{
         name: 'options'
         type: 'object'
         children: [
            require('../_params/http.requestMethod')
            require('../_params/http.requestUrl')
            require('../_params/http.requestData')
            require('../_params/http.requestConfig')
         ]
      }]

      return:
         require('../_return/http.response')
   }]