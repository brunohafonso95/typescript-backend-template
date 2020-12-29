FROM alpine:latest

WORKDIR /app

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/v3.12/main" >> /etc/apk/repositories \
    && apk upgrade -U -a \
    && apk add \
    libstdc++ \
    harfbuzz \
    nss \
    freetype \
    ttf-freefont \
    wqy-zenhei \
    nodejs \
    nodejs-npm \
    && rm -rf /var/cache/* \
    && mkdir /var/cache/apk

COPY . /app/

RUN npm i && npm run build

ENTRYPOINT ["node", "dist/src/index.js"]
