# Use an official Tomcat image as a parent image
FROM tomcat:9-jre8

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file to the Tomcat webapps directory
COPY mavenproject2-1.0.war .

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
