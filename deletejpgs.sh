#!/bin/bash

sourcedir="/home/tmp/wechat"
num=0

startTime=$(date +"%Y-%m-%d %H:%M:%S")

killfiles(){
    rm -rf "$fucks_sake"
    num=$((num+1))
    echo "垃圾文件：$fucks_sake 它已经被残忍的杀害了！"
}

OLDIFS=$IFS
IFS=$(echo -en "\n\b")

pigs=$(find "$sourcedir" -type f -name "*.jpg")
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
    echo "找到混在一堆 mp4 文件里的 jpg 奸细：$num 个！"
    echo "仅耗费了 $sumTime 秒，已经全部斩首了！"
    echo "现在是：$endTime"
    echo ""
fi