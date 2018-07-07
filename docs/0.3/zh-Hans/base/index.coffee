module.exports =

   path: 'base'
   name: '基本包'
   desc: '基本包提供最常用的功能，包括对基本类型、对象、数组等的扩展'

   items: [
      '通用'
      require('./len')
      require('./clone')

      '对象'
      require('./has')
      require('./get')
      require('./set')
      require('./del')
      require('./merge')

      '数组'
      require('./first')
      require('./last')
      require('./concat')
   ]