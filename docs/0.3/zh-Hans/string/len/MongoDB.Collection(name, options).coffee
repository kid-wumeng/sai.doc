module.exports =
   name: 'MongoDB.Collection(name, options)'
   type: 'class'
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

   return:
      name: 'collection'
      type: 'sai.MongoDB.Collection'
      desc: '集合对象'

   throws: [{
      name: 'DIVIDE_ZERO'
      desc: '除数为零'
   },{
      name: 'TEST_FAIL'
      desc: '检测失败'
   }]