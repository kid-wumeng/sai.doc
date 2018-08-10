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
      require('./min')
      require('./max')
      require('./random')

      'Object'
      require('./len')
      require('./has')
      require('./get')
      require('./set')
      require('./del')
      require('./merge')
      require('./count')
      require('./sum')

      'Array-like'
      require('./index_')
      require('./contain')
      require('./first')
      require('./last')
      require('./concat')
      require('./randomItem')
      require('./deleteItem')

      '字符串'
      require('./match')

      '函数'
      require('./switch')

      'Switcher'
      require('./Switcher@case')
      require('./Switcher@then')
      require('./Switcher@default')
      require('./Switcher@result')

      '其他'
      require('./error')
      require('./sleep')
      require('./noop')
   ]