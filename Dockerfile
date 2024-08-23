FROM nginx:alpine
LABEL name="jagaeesh"
COPY *html /usr/shbare/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "deamon off;"]
