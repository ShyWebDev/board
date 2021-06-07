FROM openjdk:11-jdk
WORKDIR /root
ARG JAR_FILE=./build/libs/*.jar
COPY ${JAR_FILE} board.jar
ENTRYPOINT ["java","-jar","/app.jar"]