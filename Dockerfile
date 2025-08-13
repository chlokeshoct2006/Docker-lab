# Pull the base image which give all required tools and libraries
FROM openjdk:17-jdk-alpine

# create a folder that store app code
WORKDIR /app

# Copy the source code from your host machine to your container 
COPY /src/Main.java /app/Main.java

# Compile the application code
RUN javac Main.java

# run the application
CMD ["java","Main"]
