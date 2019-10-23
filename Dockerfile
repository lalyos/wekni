FROM alpine
RUN apk add --no-cache  bash busybox-extras curl
RUN curl -Lo /k3s https://github.com/rancher/k3s/releases/download/v0.10.0/k3s \
    && chmod +x /k3s
CMD httpd -v -f -h /web