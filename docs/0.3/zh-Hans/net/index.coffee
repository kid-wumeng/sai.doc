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
   ]