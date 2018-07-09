module.exports =


   name: 'http.Server'


   desc: """
      ```js
      server = new sai.http.Server({
         cors: true
      })

      server.get('/users/:id', function(){
        return this.params.id
      })

      server.get('/createUser', function({ name, pass }){
        return {ok: true}
      })

      server.listen(3000)
      ```
   """


   signs: [{
      name: 'new http.Server( options )'
      more: """
         选项与默认值

         ```js
         new sai.http.Server({
            cors: false
         })
         ```
      """

      params: [{
         name: 'options'
         type: 'object'
         desc: '选项'
         default: {}

         children: [{
            name: 'cors'
            type: 'boolean'
            default: false
         }]
      }]

      return:
         name: 'server'
         type: 'sai.http.Server'
   }]