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
sai.isEqual(datas)




# Object & Array

sai.random(array, count)
sai.in(data, enums)
sai.copy(data)
sai.type(data)



# File & Directory


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