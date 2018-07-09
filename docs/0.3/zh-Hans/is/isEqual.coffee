module.exports =


   name: 'isEqual'


   desc: """
      ```js
      sai.isEqual('1', '1')  // => true
      sai.isEqual('1',  1 )  // => false
      ```
   """


   signs: [{
      name: 'isEqual( value, otherValue )'
      desc: '是否 value 与 otherValue 完全等价 ？*深度比对*'

      params: [{
         name: 'value'
         type: '*'
      },{
         name: 'otherValue'
         type: '*'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法
   """