#FROM frolvlad/alpine-oraclejdk8:slim
FROM openjdk:8-jdk-alpine
MAINTAINER mlabouardy <mohamed@labouardy.com>

#COPY . /
#EXPOSE 8080
#CMD ["java","-jar","/hystrix-dashboard.jar"]
# 挂载临时目录（如果需要）
VOLUME /tmp

# 复制 JAR 文件
COPY ./hystrix-dashboard.jar /hystrix-dashboard.jar

# 曝光端口(TomCat)
EXPOSE 8082

# 启动命令
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/hystrix-dashboard.jar"]
