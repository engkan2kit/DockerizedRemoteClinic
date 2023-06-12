FROM nginx:1.19.0-alpine

# RUN apk update
# RUN apk add --no-cache openssl
# RUN mkdir -p /etc/nginx/certs/self-signed/
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:3072 -keyout /etc/nginx/certs/self-signed/sekyur_ssl.key -out /etc/nginx/certs/self-signed/sekyur_ssl.crt -subj "/CN=${CERT_DOMAIN}"
# RUN openssl dhparam -out /etc/nginx/certs/sekyur_ssl.pem 3072
