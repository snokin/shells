# 一些自己用的Shell脚本
以上代码是用在家里 Nas 设备里的一些文件的规整活动。现学现写所以代码可能有很多不合理的地方。
`sh xxx.sh` 运行。
## 自动按年月规整文件
```shell
sh fileorganize.sh
```
该脚本内填写 sourcedir 和 destdir 的文件夹地址。然后脚本会将 soursedir 内的文件按类型和其修改时间移动到 destdir 目录内。
## 自动删除零碎小文件
该脚本会自动删除小于 200k 的图片、视频和小于 1k 的零散文件。
使用 $1 变量获取用户输入，因此文件处理的路径需要在运行脚本的时候指定。
```shell
sh delsmallfiles.sh /your/path
```
## 删除某个目录内指定后缀的文件
该脚本删除指定目录内所有 .jpg 文件。
文件处理的路径需要在脚本内的 sourdir 里指定。
```shell
sh deletejpgs.sh
````
