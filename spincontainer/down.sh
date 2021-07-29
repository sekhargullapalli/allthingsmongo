docker top mongodbexplore && (docker stop mongodbexplore || true && docker rm mongodbexplore || true)
rm -rf vdb
rm -rf vconfigdb
clear
echo "mongodbexplore container and other volume folders removed..."
