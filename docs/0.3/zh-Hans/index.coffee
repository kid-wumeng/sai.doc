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
      | *number+*       | 正数
      | *number-*       | 负数
      | *int*           | 整数
      | *int+*          | 正整数
      | *int-*          | 负整数
      | *string*        | 字符串
      | *function*      | 函数，无论是不是异步
      | *object*        | 任意对象
      | *Array*         | 数组，元素类型不限
      | *Array[T]*      | 数组，元素为 *T* 类型，比如 Array[string] 代表元素是字符串
      | *Array-like*    | 类数组对象，元素类型不限
      | *Array-like[T]* | 类数组对象，元素为 *T* 类型，比如 Array-like[string] 代表元素是字符串
      | *&lt;class&gt;* | 具体的对象，比如 Date、Buffer、fs.ReadStream、sai.Schema 等
      | *nil*           | null 或 undefined

      *Array-like* 包括 Array、string，以及 arguments、Buffer、NodeList 等近似数组的对象
   """