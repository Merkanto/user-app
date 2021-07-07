FROM openjdk:8
ADD target/user-app-0.0.1-SNAPSHOT.jar user-app-0.0.1-SNAPSHOT.jar
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "user-app-0.0.1-SNAPSHOT.jar"]