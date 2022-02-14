# 需要先安装 FFmpeg
# 使用时先对该文件执行 chmod +x 
# 参数为视频路径

videoPath=$1
audioPath=${videoPath%.*}.mp3

ffmpeg -i $videoPath -acodec libmp3lame -vn $audioPath

echo "提取完毕: $audioPath"
