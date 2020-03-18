sudo docker stop shop-gateway1.0.0 && sudo docker rm shop-gateway1.0.0

sudo docker rmi $(sudo docker images -q)

sudo docker run --privileged=true --net=host \
           -e SHOP_NACOS_ADDRESS=${SHOP_NACOS_ADDRESS} \
           -e SHOP_NACOS_NAMESPACE=${SHOP_NACOS_NAMESPACE} \
           -e SHOP_NACOS_CLUSTER_NAME=${SHOP_NACOS_CLUSTER_NAME} \
           -e PUBLIC_IP=${PUBLIC_IP} \
           -e PROFILE_ACTIVE=${PROFILE_ACTIVE} \
           -v /shop/logs:/shop/logs \
           -d --name shop-gateway1.0.0 \
           registry.cn-beijing.aliyuncs.com/yangkaifei/shop-gateway:1.0.0

sudo docker logs -f shop-gateway1.0.0
