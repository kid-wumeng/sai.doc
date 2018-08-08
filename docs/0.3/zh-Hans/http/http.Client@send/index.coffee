module.exports =


   name: 'http.Client@send'


   desc: """
      ```js
      res = await client.send({ method: 'get', path, data, config })
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
            require('../_params/http.requestPath')
            require('../_params/http.requestData')
            require('../_params/http.requestConfig')
         ]
      }]

      return:
         require('../_return/http.response')
   }]