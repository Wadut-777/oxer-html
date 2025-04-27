# Use the official Nginx base image
FROM nginx:alpine

# Remove default nginx static files (optional, but clean)
RUN rm -rf /usr/share/nginx/html/*

# Copy everything from current directory to nginx html directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]