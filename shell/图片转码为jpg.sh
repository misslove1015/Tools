# 需要先安装 ImageMagick
# 使用时先对该文件执行 chmod +x 
# 参数为图片路径

imagePath=$1
jpgPath=${imagePath%.*}.jpg
convert $imagePath $jpgPath
echo "转换完成 $jpgPath"