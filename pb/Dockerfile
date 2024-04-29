FROM alpine:latest

ARG PB_VERSION=0.22.10
ARG PB_ARCH=linux_amd64

RUN apk add --no-cache \
    unzip \
    ca-certificates

ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_${PB_ARCH}.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/

CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8095"]
