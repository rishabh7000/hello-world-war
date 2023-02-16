FROM maven:3.8.2-openjdk-8 as build_stage
ARG BUILD_NUMBER=${BUILD_NUMBER}
ENV BUILD_NUMBER=${BUILD_NUMBER}
WORKDIR /rishabh
COPY . .
RUN mvn clean package

FROM tomcat:9.0
COPY --from=build_stage /rishabh/target/hello-world-war-${BUILD_NUMBER}.war /usr/local/tomcat/webapps/



