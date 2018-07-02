module.exports =
   async: true
   params: [{
      name: 'data'
      type: ['string', 'object', '*[]']
      desc: '字符串|对象|数组'
   },{
      name: 'options'
      type: 'object'
      children: [{
         name: 'mode'
         desc: '模式'
         enum: ['length', 'cjk']
         default: 'length'
      }]
   }]