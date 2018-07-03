module.exports =
   name: 'len(string, mode)'
   type: 'async-function'

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