module.exports =

   name: 'len( data, callback )'
   desc: '测量 data 的大小，由 callback 决定每个成员的大小'

   params: [{
      name: 'data'
      type: 'object'
      desc: """
         测量目标，一般多是：
         * Array-like
         * Set, Map
         * 朴素对象
      """
   },{
      name: 'callback'
      type: 'function'
      desc: """
         计量器
         Array-like, Set, Map 使用 callback(item, i)
         其它对象使用 callback(value, key)
      """
   }]

   return:
      name: 'len'
      type: 'int ≥ 0'
      desc: '数据的长度、成员数量等'