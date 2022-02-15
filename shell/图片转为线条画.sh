# 需要先安装 ImageMagick
# 使用时先对该文件执行 chmod +x 
# 参数为PDF文件路径

imagePath=$1
resultPath=${imagePath%.*}-negate.png
magick convert $imagePath -canny 1 -negate $resultPath
echo "转换完成 $resultPath"