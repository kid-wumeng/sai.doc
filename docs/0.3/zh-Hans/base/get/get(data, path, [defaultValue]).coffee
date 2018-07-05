module.exports =

   name: 'get(data, path, [defaultValue])'

   desc: """
      获取 data 中路径为 path 的属性值
   """

   detail: """
      一个简单的例子：

      ```js
      data = {
         sai: {
            repo: 'https://github.com/kid-wumeng/sai',
            version: '1.0',
            authors: ['hi', 'kid']
         }
      }

      sai.get(data, 'sai.version')          // => '1.0'
      sai.get(data, 'sai[version]')         // => '1.0'
      sai.get(data, 'sai.authors.1')        // => 'kid'
      sai.get(data, 'sai.authors[1]')       // => 'kid'
      sai.get(data, ['sai', 'authors', 1])  // => 'kid'
      sai.get(data, 'sai.start')            // => undefined
      sai.get(data, 'sai.start', 2018)      // => 2018

      // 路径操作符与原生 JavaScript 类似，可以用 . 或 []
      ```

      以下是 data 为数组时的情况：

      ```js
      data = [{name: 'sai'}, {name: 'kid'}]

      sai.get(data,  0 )          // => {name: 'sai'}
      sai.get(data, '0')          // => {name: 'sai'}
      sai.get(data, [0])          // => {name: 'sai'}
      sai.get(data, '0.name')     // => 'sai'
      sai.get(data, '[0].name')   // => 'sai'
      sai.get(data, '0[name]')    // => 'sai'
      sai.get(data, '[0][name]')  // => 'sai'
      ```

      可以发现，get 使得嵌套取值变得十分方便，省却了每一层都要用 if 判断存在性的痛苦
   """

   params: [{
      name: 'data'
      type: 'object'
      desc: '数据对象'
   },{
      name: 'path'
      type: 'string | number | array'
      desc: '路径或下标'
   },{
      name: 'defaultValue'
      type: '*'
      desc: '当取值不存在时返回，默认值：undefined'
      optional: true
   }]

   return:
      name: 'value'
      type: '*'
      desc: '取出的值'