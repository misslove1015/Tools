# 需要先安装 FFmpeg
# 使用时先对该文件执行 chmod +x 
# 参数为音频路径

originPath=$1
audioPath=${originPath%.*}.mp3

ffmpeg -i $originPath -f mp3 -acodec libmp3lame -y $audioPath

echo "转换完毕: $audioPath"