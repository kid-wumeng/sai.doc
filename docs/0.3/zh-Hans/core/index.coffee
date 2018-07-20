module.exports =

   path: 'core'
   name: '核心'
   desc: '核心包提供最常用的功能，包括对基本类型、对象、数组等的扩展'

   items: [
      '基本'
      require('./type')
      require('./equal')
      require('./clone')

      'Number'
      require('./random')

      'Object'
      require('./len')
      require('./has')
      require('./get')
      require('./set')
      require('./del')
      require('./merge')
      require('./count')

      'Array-like'
      require('./index_')
      require('./contain')
      require('./first')
      require('./last')
      require('./concat')

      '字符串'
      require('./match')

      '函数'

      '其他'
      require('./error')
      require('./sleep')
      require('./noop')
   ]