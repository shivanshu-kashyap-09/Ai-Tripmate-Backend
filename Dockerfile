# Use Java 21 base image
FROM eclipse-temurin:21-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file built by Maven (assumes you already ran `./mvnw clean install`)
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar


# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
