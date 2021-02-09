#!/bin/bash

# 开始计时和计数
startTime=`date +"%Y-%m-%d %H:%M:%S"`
num=0

OLDIFS=$IFS
IFS=$(echo -en "\n\b")

filelist=$(find "$1" -type f -size -50k -name "*.jpg")
for smallfiles in $filelist
do
	if [ ! -f "smallfiles" ];then
		rm -rf "$smallfiles"
		echo "$smallfiles,已被删除了！"
		num=`expr $num + 1`
	else
		echo "跳过"
	fi
done

filelist=$(find "$1" -type f -size -50k -name "*.webp")
for smallfiles in $filelist
do
	if [ ! -f "smallfiles" ];then
		rm -rf "$smallfiles"
		echo "$smallfiles,已被删除了！"
		num=`expr $num + 1`
	else
		echo "跳过"
	fi
done


filelist=$(find "$1" -type f -size -200k -name "*.mp4")
for smallfiles in $filelist
do
	if [ ! -f "smallfiles" ];then
		rm -rf "$smallfiles"
		echo "$smallfiles,已被删除了！"
		num=`expr $num + 1`
	else
		echo "跳过"
	fi
done


filelist=$(find "$1" -type f -size -200k -name "*.webm")
for smallfiles in $filelist
do
	if [ ! -f "smallfiles" ];then
		rm -rf "$smallfiles"
		echo "$smallfiles,已被删除了！"
		num=`expr $num + 1`
	else
		echo "跳过"
	fi
done


filelist=$(find "$1" -type f -size -1k -name "*.ogg")
for smallfiles in $filelist
do
	if [ ! -f "smallfiles" ];then
		rm -rf "$smallfiles"
		echo "$smallfiles,已被删除了！"
		num=`expr $num + 1`
	else
		echo "跳过"
	fi
done


filelist=$(find "$1" -type f -size -2k -name "*.*")
for smallfiles in $filelist
do
	if [ ! -f "smallfiles" ];then
		rm -rf "$smallfiles"
		echo "$smallfiles,已被删除了！"
		num=`expr $num + 1`
	else
		echo "跳过"
	fi
done

IFS=$OLDIFS

endTime=`date +"%Y-%m-%d %H:%M:%S"`
st=`date -d  "$startTime" +%s`
et=`date -d  "$endTime" +%s`
sumTime=$(($et-$st))

if [ $num -lt 1 ];then
	true
else
	echo ""
	echo "本次共计处理了 $num 个文件！"
	echo "总共耗时：$sumTime 秒"
	echo "整理时间：$endTime"
	echo "----------------------------"
	echo " >> 本次整理活动运行完毕！<<"
	echo "----------------------------"
	echo ""
	echo ""
fi