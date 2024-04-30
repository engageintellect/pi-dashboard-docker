# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the Nginx configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Ensure directories for Let's Encrypt are present (if they're not already mounted as volumes)
RUN mkdir -p /etc/letsencrypt/live/example.com \
	&& mkdir -p /etc/letsencrypt/archive/example.com \
	&& mkdir -p /etc/letsencrypt/renewal

# Optional: Copy over any static content or certificates if not using mounted volumes
# COPY static-content/ /usr/share/nginx/html
# COPY fullchain.pem /etc/letsencrypt/live/example.com/fullchain.pem
# COPY privkey.pem /etc/letsencrypt/live/example.com/privkey.pem

# Expose ports for HTTP and HTTPS
EXPOSE 80 443

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
