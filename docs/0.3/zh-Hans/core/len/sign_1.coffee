module.exports =

   name: 'len( data, [mode] )'
   desc: '测量 data 的大小'
   more: '根据 data 类型的不同，会运用不同的策略'

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
      name: 'mode'
      type: 'string'
      desc: """
         字符串长度计算模式，仅在 data 为 string 时可用

         * *length* - data.length
         * *cjk* - 中日韩字符占 2 位，其余占 1 位
      """
      default: 'length'
   }]

   return:
      name: 'len'
      type: 'int ≥ 0'
      desc: '数据的长度、成员数量等'