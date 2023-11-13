# Use an official Maven runtime as a parent image
FROM maven:3.8.1-openjdk-11 AS build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the pom.xml file into the container at /usr/src/app
COPY pom.xml .

# Copy the entire project into the container at /usr/src/app
COPY . .

# Build the application
RUN mvn clean package

# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0.53-jdk11-openjdk-slim

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps

# Copy the war file from the build stage to the Tomcat webapps directory
COPY --from=build /usr/src/app/target/lab2-welcome-webapp-0.0.1-SNAPSHOT.jar .

# Expose port 8080 to the outside world
EXPOSE 8080

# Define environment variable
ENV NAME sanjaywebapp

# Run Tomcat
CMD ["catalina.sh", "run"]
