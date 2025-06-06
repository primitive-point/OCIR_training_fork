# Use official nginx image as base - specify platform for AMD64
FROM --platform=linux/amd64 nginx:alpine

# Set maintainer information  
LABEL maintainer="your-email@example.com"
LABEL description="Simple web application with nginx for AMD64"

# Copy web application files to nginx html directory
COPY Index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Create custom nginx config for port 8080
RUN echo 'server { listen 8080; location / { root /usr/share/nginx/html; index Index.html; } }' > /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Start nginx on port 8080
CMD ["nginx", "-g", "daemon off;"]
