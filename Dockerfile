FROM nginx:1.12.0-alpine
MAINTAINER "Acer Cloud Infra Team"

# Get required files for installation
RUN mkdir -p /etc/ssl/nginx

COPY ./config/ /etc/nginx/config/
COPY ./html/ /var/www/html/


ENTRYPOINT ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/config/nginx.conf"]
CMD [ ]