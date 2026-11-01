# Use minimal, secure lightweight Nginx image
FROM nginx:alpine

# Copy static HTML visualization to the default Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
