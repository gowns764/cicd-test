FROM nginx:latest

LABEL maintainer "haejun.ko <gowns0719@gmail.com>"
COPY nginx.conf /etc/nginx/nginx.conf

RUN apt-get update && apt-get install -y curl