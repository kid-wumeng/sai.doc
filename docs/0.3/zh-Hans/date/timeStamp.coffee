module.exports =


   name: 'timeStamp'


   desc: """
      ```js
      timeStamp = sai.timeStamp(date)
      ```
   """


   signs: [{
      name: 'timeStamp( date )'
      desc: '获取时间戳 ( 格林威治时间1970年01月01日00时00分00秒起至现在的总秒数 )'

      params: [{
         name: 'date'
         type: 'Date'
      }]

      return:
         name: 'timeStamp'
         type: 'int ≥ 0'
   }]