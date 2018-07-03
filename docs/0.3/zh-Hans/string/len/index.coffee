module.exports =

   name: 'len'

   desc: '计算*长度*或数量'

   signs: [{
      class: true
      name: 'MongoDB.Collection(name, options)'
      desc: '统计对象中的属性数量'
      params: [{
         name: 'name'
         type: 'string'
         desc: '集合名'
         required: true
      },{
         name: 'options'
         type: 'object'
         desc: '选项配置'
      }]
   },{
      name: 'len(string, mode)'
      desc: '''
         统计字符串中的字符个数
      '''
      params: [{
         name: 'string'
         type: 'string'
         required: true
      },{
         name: 'autoIDStore'
         type: 'string'
         default: 'length'
         desc: '''
            模式，默认值："length"
            * *length* - 以 String.prototype.length 统计
            * *cjk* - 中日韩字符算2位，其它字符算1位
         '''
         children: [{
            name: 'mode'
            desc: '模式'
            default: 'length'
            scopes: ['length', 'cjk']
         }]
      }]
   }]