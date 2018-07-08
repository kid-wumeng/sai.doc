module.exports =

   name: 'options'
   type: 'plain-object'
   optional: true

   children: [{
      name: 'sort'
      type: 'string'
      desc: """
         默认值：*"id"*
         用于排序的字段名
      """
      optional: true
   },{
      name: 'desc'
      type: 'boolean'
      desc: """
         默认值：*false*
         是否逆序 ？
      """
      optional: true
   },{
      name: 'skip'
      type: 'int+'
      desc: """
         默认值：*1*
         跳过的文档条数
      """
      optional: true
   },{
      name: 'page'
      type: 'int+'
      desc: """
         默认值：*1*
         页码
      """
      optional: true
   },{
      name: 'size'
      type: 'int+'
      desc: """
         默认值：*0*
         每页文档条数
      """
      optional: true
   },{
      name: 'pick'
      type: 'string[]'
      desc: """
         默认值：*[]*
         选中的字段
      """
      optional: true
   },{
      name: 'omit'
      type: 'string[]'
      desc: """
         默认值：*[]*
         忽略的字段
      """
      optional: true
   },{
      name: 'hide'
      type: 'boolean'
      desc: """
         默认值：*false*
         是否包含隐藏的字段
      """
      optional: true
   }]