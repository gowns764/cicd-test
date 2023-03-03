FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY cert.crt /etc/nginx/conf.d/cert.crt
COPY cert.key /etc/nginx/conf.d/cert.key

RUN apt-get update \
  && apt-get install -y curl \
  && curl -sSL https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk -o /tmp/glibc.apk \
  && apk add --allow-untrusted /tmp/glibc.apk \
  && rm /tmp/glibc.apk

CMD ["nginx", "-g", "daemon off;"]