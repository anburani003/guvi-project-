# Use the official Nginx base image
FROM nginx:latest

# Copy custom configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your web application files to the default Nginx web root directory
COPY ./html /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
