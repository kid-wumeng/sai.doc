module.exports =

   name: 'len'

   methods: [{
      sign: 'len(object)'
      async: true
      params: [{
         name: 'object'
         type: 'object'
         desc: '对象'
         required: true
      }]
   },{
      sign: 'len(string, mode)'
      params: [{
         name: 'string'
         type: 'string'
         desc: '字符串'
      },{
         name: 'mode'
         type: 'string'
         children: [{
            name: 'mode'
            desc: '模式'
            scopes: ['length', 'cjk']
            default: 'length'
         }]
      }]
   }]
