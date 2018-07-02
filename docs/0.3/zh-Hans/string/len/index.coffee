module.exports =

   name: 'len'

   signs: [{
      name: 'len(object)'
      async: true
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
            scopes: ['length', 'cjk']
            default: 'length'
         }]
      }]
   }]