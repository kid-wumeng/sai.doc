module.exports =
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