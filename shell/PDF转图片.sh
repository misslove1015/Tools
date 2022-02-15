# 需要先安装 ImageMagick
# 使用时先对该文件执行 chmod +x 
# 参数为PDF文件路径

filePath=$1
imagePath=${filePath%.*}.jpg
convert -density 100 -quality 100 $filePath $imagePath
echo "转换完成 $imagePath"
