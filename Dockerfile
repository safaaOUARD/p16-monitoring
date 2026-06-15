FROM eclipse-temurin:17-jre
COPY target/tp8-monitoring-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]