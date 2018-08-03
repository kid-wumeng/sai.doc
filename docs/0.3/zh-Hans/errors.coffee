module.exports =


   INVALID_PARAMS:
      name: 'INVALID_PARAMS'
      desc: """
         参数无效，可能：

         * 类型不匹配
         * 格式不匹配
         * 数量太多或太少
      """


   INVALID_DATA:
      name: 'INVALID_DATA'
      desc: """
         数据无效，测试失败
      """


   FILE_NOT_FOUND:
      name: 'FILE_NOT_FOUND'
      desc: '文件未找到，或指向一个目录'


   DIR_NOT_FOUND:
      name: 'DIR_NOT_FOUND'
      desc: '目录未找到，或指向一个文件'


   TEXT_PARSE_FAIL:
      name: 'TEXT_PARSE_FAIL'
      desc: '文本解析失败\n无法顺利转换为预期格式'