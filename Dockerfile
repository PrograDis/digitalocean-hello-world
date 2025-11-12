FROM nginx:alpine

LABEL org.opencontainers.image.source="https://github.com/Tisicd/digitalocean-hello-world" \
      org.opencontainers.image.title="DigitalOcean Hello World" \
      org.opencontainers.image.description="Sitio estático minimalista para DigitalOcean App Platform" \
      org.opencontainers.image.licenses="MIT"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

