# Use a base image with Java 11
FROM openjdk:11-jre-slim

# Define the working directory
WORKDIR /app

# Copy the application JAR file from the build context to the /app directory in the image
COPY target/api-gateway-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

