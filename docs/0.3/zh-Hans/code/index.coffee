module.exports =

   path: 'code'
   name: '编码 & 加密'
   desc: ''

   items: [
      'JSON Web Token'
      require('./jwt.encode')
      require('./jwt.decode')

      'Bcrypt'
      require('./bcrypt.encode')
      require('./bcrypt.compare')
   ]