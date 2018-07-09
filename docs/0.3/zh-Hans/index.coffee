module.exports =

   packs: [
      require('./core')
      require('./test')
      require('./file')
      require('./mongo')
   ]

   more: """
      # 文档使用的 Param 类型

      | 类型            | 意义         |
      |-----------------|---------------|
      | _*_             | 任意类型，无限制
      | *boolean*       | 布尔量
      | *number*        | 数
      | *number+*       | 正数，不含零
      | *number-*       | 负数，不含零
      | *int*           | 整数
      | *int+*          | 正整数，不含零
      | *int-*          | 负整数，不含零
      | *0*             | 零
      | *string*        | 字符串
      | *function*      | 函数，无论是不是异步
      | *object*        | 任意对象
      | *Array*         | 数组，元素类型不限
      | *Array[T]*      | 数组，元素为 *T* 类型，比如 Array[string] 表示元素是字符串
      | *Array-like*    | 类数组对象，元素类型不限
      | *Array-like[T]* | 类数组对象，元素为 *T* 类型，比如 Array-like[string] 表示元素是字符串
      | *&lt;class&gt;* | 具体的对象，比如 Date、Buffer、fs.ReadStream、sai.Schema 等
      | *nil*           | null 或 undefined

      *Array-like* 包括 Array、string、arguments、Buffer、NodeList，以及其它可被 [Array.from](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from) 转换为 Array 的对象，但不包括 Set 与 Map
   """