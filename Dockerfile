FROM java:8-alpine

MAINTAINER jiaoshou ykaifei@163.com

ADD target/shop-gateway-1.0.0.jar shop-gateway-1.0.0.jar

ENTRYPOINT ["java", "-jar", "/shop-gateway-1.0.0.jar"]