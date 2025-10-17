# Use Nginx as the web server
FROM nginx:alpine

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file(s) into Nginx web root
COPY index.html /usr/share/nginx/html/

# Expose container port 80
EXPOSE 80

# Run Nginx in the foreground (JSON form to avoid warnings)
CMD ["nginx", "-g", "daemon off;"]
