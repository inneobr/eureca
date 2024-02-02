FROM openjdk:21-jdk
MAINTAINER root
RUN mkdir services
COPY target/*.jar services/eureka.jar
EXPOSE 7100
ENTRYPOINT ["java", "-jar", "/services/eureka.jar"]