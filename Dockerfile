# Use official nginx image as base
FROM nginx:alpine

# Remove default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy our static site into nginx's serving directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 (nginx's default)
EXPOSE 80

# nginx starts automatically — no CMD override needed