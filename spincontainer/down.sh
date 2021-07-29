docker top mongodbexplore && (docker stop mongodbexplore || true && docker rm mongodbexplore || true)
rm -rf db
rm -rf configdb
clear
echo "mongodbexplore container and other volume folders removed..."
