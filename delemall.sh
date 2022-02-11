#!/bin/bash

sourcedir="$1"
num=0

startTime=$(date +"%Y-%m-%d %H:%M:%S")

killfiles(){
    rm -rf "$fucks_sake"
    num=$((num+1))
    echo "垃圾文件：$fucks_sake 它已经被残忍的杀害了！"
}

OLDIFS=$IFS
IFS=$(echo -en "\n\b")
if [ ! -n $1 ]; then
    echo "请在命令后面带上一个将要处理的有效目录地址!"
    echo "示例：sh delemall.sh /your/path/to/dir *.jpg"
    exit 2
elif [ ! -n $2 ]; then
    echo "请在命令后面带上一个将要处理的文件类型!"
    echo "示例：sh delemall.sh /your/path/to/dir *.jpg"
    exit 2
fi
pigs=$(find "$sourcedir" -type f -name "$2")
for fucks_sake in $pigs
do
    killfiles
done

IFS=$OLDIFS

endTime=$(date +"%Y-%m-%d %H:%M:%S")
st=$(date -d  "$startTime" +%s)
et=$(date -d  "$endTime" +%s)
sumTime=$((et-st))

echo ""
echo "查找的目录是：$sourcedir"
if [ $num -lt 1 ]; then
    true
else
    echo "找到该目录下的 $2 奸细：$num 个！"
    echo "仅耗费了 $sumTime 秒，已经全部斩首了！"
    echo "现在是：$endTime"
    echo ""
fi
