# 需要先安装 ImageMagick
# 使用时先对该文件执行 chmod +x 
# 参数为1024*1024的png图片

imagePath=$1
dirPath=$(cd "$(dirname $imagePath)";pwd)

convert $imagePath -resize 40x40 $dirPath/icon-20@2x.png
convert $imagePath -resize 60x60 $dirPath/icon-20@3x.png
convert $imagePath -resize 58x58 $dirPath/icon-29@2x.png
convert $imagePath -resize 87x87 $dirPath/icon-29@3x.png
convert $imagePath -resize 80x80 $dirPath/icon-40@2x.png
convert $imagePath -resize 120x120 $dirPath/icon-40@3x.png
convert $imagePath -resize 120x120 $dirPath/icon-60@2x.png
convert $imagePath -resize 180x180 $dirPath/icon-60@3x.png

echo "生成完成 $dirPath"