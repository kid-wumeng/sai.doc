module.exports = ( children = [], rawLink = '' ) =>


   childrenParams =
      sort:       require('./_queryOptions.sort')
      desc:       require('./_queryOptions.desc')
      skip:       require('./_queryOptions.skip')
      page:       require('./_queryOptions.page')
      size:       require('./_queryOptions.size')
      pick:       require('./_queryOptions.pick')
      omit:       require('./_queryOptions.omit')
      hide:       require('./_queryOptions.hide')
      rawOptions: require('./_queryOptions.rawOptions')(rawLink)


   return
      name:    'options'
      type:    'plain-object'
      optional: true
      children: children.map (name) => childrenParams[name]