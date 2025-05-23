FROM debian:bullseye

RUN apt update && apt install -y nginx && apt clean

COPY default.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
