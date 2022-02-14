# 需要先安装 ImageMagick
# 使用时先对该文件执行 chmod +x 
# 参数为文件夹

dirPath=$1

for file in $(ls $dirPath) 
do
    imagePath=$dirPath/$file
    jpgPath=${imagePath%.*}.jpg
    convert $imagePath $jpgPath rgb
done

echo "转换完成 $dirPath"