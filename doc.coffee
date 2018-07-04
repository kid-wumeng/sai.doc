# Store

db = new sai.MongoDB({
   host: '0.0.0.0'
   port: 27017
   name: 'test'
   user: ''
   pass: ''
   autoID: false
   autoIDStore: 'id_store'
})


await db.connect()
      db.url()
await db.close()
await db.drop()



# Type & Value

sai.isMIME(data, mime)
sai.isImage(data)


sai.isFunction(data)
sai.isSyncFunction(data)
sai.isAsyncFunction(data)


sai.isPlainObject(data)
sai.isObject(data)
sai.isClass(data)


sai.isArray(data)
sai.isArrayLike(data)
sai.isArrayBuffer(data)
sai.isArguments(data)


sai.isPromise(data)
sai.isStream(data)
sai.isMap(data)
sai.isSet(data)
sai.isWeakMap(data)
sai.isWeakSet(data)
sai.isError(data)
sai.isSymbol(data)


sai.isNull(data)
sai.isUndefined(data)
sai.isNil(data)
sai.isEmpty(data)



# Object & Array

sai.get(data, path, [defaultValue])
sai.set(data, path, value)
sai.del(data, path)
sai.first(array)
sai.last(array)
sai.random(array, count)
sai.equal(datas)
sai.has(data, ...names)
sai.in(data, enums)
sai.len(data, mode)
sai.len(data, callback)
sai.merge(...datas)
sai.copy(data)
sai.type(data)



# String

sai.isChar(string)
sai.isEmail(string)
sai.isUri(string)
sai.isUrl(string)
sai.isUrn(string)
sai.isIP(string)
sai.isIPv4(string)
sai.isIPv6(string)
sai.isFiniteString(string)
sai.isIntString(string)
sai.isFloatString(string)
sai.isStart(string, start)
sai.isEnd(string, end)



# File & Directory

      sai.thisPath(path)
      sai.rootPath(path)

await sai.isFile(path)
await sai.isDir(path)

await sai.readFile(path, encoding)
await sai.readDir(path)

await sai.writeFile(path, data)

await sai.statFile(path)
await sai.statDir(path)

await sai.countFile(path)
await sai.countDir(path)
await sai.countFileOrDir(path)

await sai.ensureFile(path)
await sai.ensureDir(path)

await sai.createFile(path)
await sai.createDir(path)

await sai.deleteFile(path)
await sai.deleteDir(path)
await sai.deleteFileOrDir(path)

await sai.moveFile(fromPath, toPath)
await sai.moveDir(fromPath, toPath)
await sai.moveFileOrDir(fromPath, toPath)

await sai.copyFile(fromPath, toPath)
await sai.copyDir(fromPath, toPath)
await sai.copyFileOrDir(fromPath, toPath)