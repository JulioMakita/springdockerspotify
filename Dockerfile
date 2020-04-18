# Start with a base image containing Java runtime
FROM openjdk:11

# Add Maintainer Info
MAINTAINER Julio Makita <juliobrjp@hotmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 7070 available to the world outside this container
EXPOSE 8085

# The application's jar file
ARG JAR_FILE=target/springdockerspotify.jar

# Add the application's jar to the container
ADD ${JAR_FILE} springdockerspotify.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springdockerspotify.jar"]

