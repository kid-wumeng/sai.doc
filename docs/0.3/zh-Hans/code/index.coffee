module.exports =

   path: 'code'
   name: '编码 & 加密'
   desc: ''

   items: [
      'CSON'
      require('./cson.stringify')
      require('./cson.parse')

      'YAML'
      require('./yaml.stringify')
      require('./yaml.parse')

      'JSON Web Token'
      require('./jwt.encode')
      require('./jwt.decode')
      require('./jwt.verify')

      'Bcrypt'
      require('./bcrypt.salt')
      require('./bcrypt.hash')
      require('./bcrypt.compare')
   ]