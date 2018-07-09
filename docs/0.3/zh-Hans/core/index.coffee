module.exports =

   path: 'core'
   name: '核心'
   desc: '核心包提供最常用的功能，包括对基本类型、对象、数组等的扩展'

   items: [
      '通用'
      require('./type')
      require('./len')
      require('./clone')
      require('./random')

      'Object'
      require('./has')
      require('./get')
      require('./set')
      require('./del')
      require('./merge')

      'Array-like'
      require('./first')
      require('./last')
      require('./concat')

      'Object & Array-like'
      require('./count')
   ]