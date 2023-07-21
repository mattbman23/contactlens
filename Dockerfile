# Use the official nginx image as the base image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html, where the web content will be served from
WORKDIR /usr/share/nginx/html

# Copy all the resource files (HTML, CSS, etc.) from the current directory to the container's working directory
COPY . .

# Add the MIME type configuration for WebAssembly files
# RUN echo 'application/wasm     wasm' >> /etc/nginx/mime.types

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# The CMD instruction specifies the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
