module.exports =

   path: 'net'
   name: '网络'
   desc: ''

   items: [
      'HTTP'
      require('./http.get')
      require('./http.post')
      require('./http.put')
      require('./http.patch')
      require('./http.delete')

      'HTTP 客户端'
      require('./http.Client')
      require('./http.Client@get')
      require('./http.Client@post')
      require('./http.Client@put')
      require('./http.Client@patch')
      require('./http.Client@delete')
   ]