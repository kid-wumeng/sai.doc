module.exports =


   name: 'http.Client'


   desc: """
      ```js
      client = new sai.http.Client({
         urlBase: 'http://127.0.0.1:8080'
      })

      res = await client.get('/users/1')
      ```
   """


   signs: [{
      name: 'new http.Client( options )'
      more: """
         选项与默认值

         ```js
         new sai.http.Client({
            urlBase: ''
         })
         ```
      """

      params: [{
         name: 'options'
         type: 'object'
         desc: '选项'
         default: {}

         children: [{
            name: 'urlBase'
            type: 'string'
            default: ''
         }]
      }]

      return:
         name: 'client'
         type: 'sai.http.Client'
   }]