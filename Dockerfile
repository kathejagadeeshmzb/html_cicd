# 1. Use the official Nginx image as the base image
FROM nginx:alpine

# 2. Add metadata to the image
LABEL name="jagadeesh"

# 3. Install necessary packages (Note: `apt-get` is not available in Alpine, use `apk` instead)
RUN apk update && apk add --no-cache apache2

# 4. Copy your HTML files to the Nginx directory
COPY ./*.html /usr/share/nginx/html/

# 5. Expose port 80 to the outside world
EXPOSE 80

# 6. Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
