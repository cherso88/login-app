# Use the Maven image with Java 17 as the base imagee
FROM maven:3.8.3-openjdk-17-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Build the project with Maven
RUN mvn clean package

# Command to run the application (replace 'your-application.jar' with the actual name of the JAR or WAR file generated by Maven)
CMD ["java", "-jar", "target/login-app-1.jar"]