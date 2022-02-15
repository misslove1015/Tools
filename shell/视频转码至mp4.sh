# 需要先安装 FFmpeg
# 使用时先对该文件执行 chmod +x 
# 参数为视频路径

originPath=$1
mp4Path=${originPath%.*}.mp4
ffmpeg -i $originPath -codec copy $mp4Path
echo "转换完毕: $mp4Path"