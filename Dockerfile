# Use Maven image to build the application
FROM eclipse-temurin:21-jdk-alpine as build

WORKDIR /app

# Copy the pom and source code
COPY pom.xml .
COPY src ./src

# Install maven and build the app
RUN apk add --no-cache maven
RUN mvn clean install -DskipTests

# Package stage
FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

# Copy the built jar from the build stage
COPY --from=build /app/target/*.jar app.jar

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
