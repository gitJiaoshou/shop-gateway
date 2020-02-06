docker stop shop-gateway1.0.0 && docker rm shop-gateway1.0.0

docker rmi $(docker images -q)

docker run --privileged=true --net=host \
           -e SHOP_NACOS_ADDRESS=${SHOP_NACOS_ADDRESS} \
           -e SHOP_NACOS_NAMESPACE=${SHOP_NACOS_NAMESPACE} \
           -e SHOP_NACOS_CLUSTER_NAME=${SHOP_NACOS_CLUSTER_NAME} \
           -e PROFILE_ACTIVE=${PROFILE_ACTIVE} \
           -v /shop/logs:/shop/logs \
           -d --name shop-gateway1.0.0 \
           registry.cn-beijing.aliyuncs.com/yangkaifei/shop-gateway:1.0.0

docker logs -f shop-gateway1.0.0
