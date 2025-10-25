# Step 1: Use an official Java runtime as a base image
FROM openjdk:21-jdk

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the built JAR file into the container
COPY target/*.jar app.jar

# Step 4: Expose the port your Spring Boot app runs on (default 8080)
EXPOSE 8080

# Step 5: Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
