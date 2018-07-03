module.exports =

   name: 'len'

   desc: '计算*长度*或数量'

   signs: [{
      async: true
      name: 'len(object)'
      desc: '统计对象中的属性数量'
      params: [{
         name: 'object'
         type: 'object'
         desc: '对象'
         required: true
      }]
   },{
      name: 'len(string, mode)'
      params: [{
         name: 'string'
         type: 'string'
         desc: '字符串'
      },{
         name: 'options'
         type: 'object'
         desc: '选项'
         children: [{
            name: 'mode'
            desc: '模式'
            default: 'length'
            scopes: ['length', 'cjk']
         }]
      }]
   }]