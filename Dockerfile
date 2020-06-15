FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/Order-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 3458
ENV JAVA_OPTS=""
RUN sh -c "touch Order-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "Order-0.0.1-SNAPSHOT.jar" ]