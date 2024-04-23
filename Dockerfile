# Use the official nginx image as the base image
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove the default nginx welcome page
RUN rm -rf ./*

# Copy the contents of the template into the container
COPY website/ .

# Expose port 80
EXPOSE 80

# Command to run nginx
CMD ["nginx", "-g", "daemon off;"]