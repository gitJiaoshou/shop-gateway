docker rm `docker ps -a -q`
docker rmi --force `docker images | grep group | awk '{print $3}'`
## 打包
mvn clean package -Dmaven.test.skip=true -U
## 构建docker镜像
docker build -t shop-gateway:1.0.0 .
#登录镜像
sudo docker login --username=13730404063 registry.cn-beijing.aliyuncs.com
#推送   [ImageId]根据实际情况修改
sudo docker tag 6f8fafed9aa8 registry.cn-beijing.aliyuncs.com/yangkaifei/shop-gateway:1.0.0
sudo docker push registry.cn-beijing.aliyuncs.com/yangkaifei/shop-gateway:1.0.0
