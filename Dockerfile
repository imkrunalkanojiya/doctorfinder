# Use the official Tomcat image from DockerHub
FROM tomcat:9.0-jdk11

# Copy the JSP files and libraries to the webapp
COPY ./src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# Expose the default Tomcat port
EXPOSE 8080