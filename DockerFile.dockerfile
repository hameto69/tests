# Use an official Apache runtime as the base image
FROM httpd:latest

# Set the working directory
WORKDIR /usr/local/apache2/htdocs/

# Copy the HTML files to the container
COPY . .

# Expose port 80 for the web app
EXPOSE 80