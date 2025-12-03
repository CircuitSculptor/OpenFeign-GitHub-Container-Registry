FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Copy the fat jar built by Maven
COPY target/*.jar app.jar

EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]