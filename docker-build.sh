docker rmi registry.cn-beijing.aliyuncs.com/yangkaifei/shop-gateway:1.0.0
docker rmi shop-gateway:1.0.0
## 打包
mvn clean package -Dmaven.test.skip=true -U
## 构建docker镜像
docker build -t shop-gateway:1.0.0 .
#登录镜像
sudo docker login --username=13730404063 registry.cn-beijing.aliyuncs.com
#推送
sudo docker tag $(docker images |grep "shop-gateway" | awk '{print $3}') registry.cn-beijing.aliyuncs.com/yangkaifei/shop-gateway:1.0.0
sudo docker push registry.cn-beijing.aliyuncs.com/yangkaifei/shop-gateway:1.0.0
