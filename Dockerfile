RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN chmod +x get-docker.sh
RUN sh get-docker.sh

# Use an official Apache runtime as the base image
FROM httpd:latest

# Set the working directory
WORKDIR /usr/local/apache2/htdocs/

# Copy the HTML files to the container ok
COPY . .
 
# Expose port 80 for the web app
EXPOSE 80 