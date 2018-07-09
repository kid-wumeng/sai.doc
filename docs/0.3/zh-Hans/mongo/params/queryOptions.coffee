module.exports = ( children = [], rawLink = '' ) =>


   childrenParams =
      sort:       require('./queryOptions.sort')
      desc:       require('./queryOptions.desc')
      skip:       require('./queryOptions.skip')
      page:       require('./queryOptions.page')
      size:       require('./queryOptions.size')
      pick:       require('./queryOptions.pick')
      omit:       require('./queryOptions.omit')
      hide:       require('./queryOptions.hide')
      rawOptions: require('./queryOptions.rawOptions')(rawLink)


   return
      name: 'options'
      type: 'object'
      default: {}
      children: children.map (name) => childrenParams[name]