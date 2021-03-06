# 需要先安装 ImageMagick
# 使用时先对该文件执行 chmod +x 
# 第一个参数为文件夹路径，第二个参数为压缩率（1~100）

dirPath=$1
rate=50
if [ ! "$2" = "" ];then
    rate=$2
fi

compressDir=$dirPath/compress
if [ ! -d $compressDir ];then
    mkdir $dirPath/compress    
fi

for file in $(ls $dirPath) 
do
    originPath=$dirPath/$file
    resultPath=$compressDir/$file    
    convert $originPath -quality $rate $resultPath
done

echo "压缩完成 $dirPath/compress"