#!/bin/bash

# 目标文件夹与文件归档的目标文件夹
destdir="/home/videos/Telefiles"
# 媒体文件目录
sourcedir="/home/tmp/Telegram"

# 开始处理图片目录

# 遍历图片目录内所有文件，将其移动到对应目录内

function jpgorg(){

	cd "$subdir" || exit
	for media in *.jpg
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='图片'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}



function jpg1org(){

	cd "$subdir" || exit
	for media in *.JPG
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='图片'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}


function pngorg(){

	cd "$subdir" || exit
	for media in *.png
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='图片'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}


function png1org(){

	cd "$subdir" || exit
	for media in *.PNG
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='图片'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}



function webporg(){

	cd "$subdir" || exit
	for media in *.webp
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='图片'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}


function giforg(){

	cd "$subdir" || exit
	for media in *.gif
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='图片'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}


function mp4org(){

	cd "$subdir" || exit
	for media in *.mp4
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='视频'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}




function mp41org(){

	cd "$subdir" || exit
	for media in *.MP4
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='视频'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}



function movorg(){

	cd "$subdir" || exit
	for media in *.MOV
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='视频'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}



function webmorg(){

	cd "$subdir" || exit
	for media in *.webm
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='视频'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}




function oggorg(){

	cd "$subdir" || exit
	for media in *.ogg
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='音频'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}


function otherorg(){

	cd "$subdir" || exit
	for media in *.*
	do
		if [ ! -f "$media" ]; then
			true
		else
				yearfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%Y年')
				monthfolder=$(date -d "@$( stat -c '%Y' "$media" )" +'%m月')
				mediafolder='其他文件'
				finalfolder=$destdir/$yearfolder/$monthfolder/$mediafolder
				
				if [ ! -d "$finalfolder" ]; then
					mkdir -p "$finalfolder"
				fi
				
				mv -- "$media" "$finalfolder"
				echo "文件>>$media已经转移到$finalfolder。"
				num=`expr $num + 1`
		fi
	done

}

# 开始计时计数
startTime=`date +"%Y-%m-%d %H:%M:%S"`
num=0

listdir=$(find "$sourcedir" -maxdepth 5 -name "*" -type d)

OLDIFS=$IFS
IFS=$(echo -en "\n\b")

for subdir in $listdir
do
	if [ ! -d "$subdir" ];then
		echo "跳过"
	else
		jpgorg
		jpg1org
		pngorg
		movorg
		webporg
		mp4org
		mp41org
		webmorg
		oggorg
		giforg
		otherorg
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
	echo "本次共计移动了 $num 个文件"
	echo "总共耗时: $sumTime 秒"
	echo "整理时间：$endTime"
	echo "----------------------------"
	echo " >> 本次整理活动运行完毕！<<"
	echo "----------------------------"
	echo ""
	echo ""
fi
