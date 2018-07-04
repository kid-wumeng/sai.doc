module.exports =

   name: 'isDate(...value)'

   desc: """
      是否为 Date 对象 ？
   """

   text: """
      ```js
      sai.isDate(new Date(2018, 6, 5))  // => true

      // 支持多值检测
      sai.isDate(date1, date2,  date3)  // => true
      sai.isDate(date1, '2018', date3)  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'