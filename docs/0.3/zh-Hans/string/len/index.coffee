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
         default: 6
         required: true
      }]
   },{
      name: 'len(string, mode)'
      params: [{
         name: 'string'
         type: 'string'
         default: 'kid'
      },{
         name: 'options'
         type: 'object'
         desc: '''
            选项
            可选值：length | cjk
         '''
         children: [{
            name: 'mode'
            desc: '模式'
            default: 'length'
            scopes: ['length', 'cjk']
         }]
      }]
   }]