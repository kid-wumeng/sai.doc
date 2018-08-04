module.exports =

   path: 'code'
   name: '编码 & 加密'
   desc: ''

   items: [
      'JSON Web Token'
      require('./jwt.encode')
      require('./jwt.decode')
      require('./jwt.verify')

      'Bcrypt'
      require('./bcrypt.salt')
      require('./bcrypt.hash')
      require('./bcrypt.compare')
   ]