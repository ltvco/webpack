FROM node:8
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install gcc autoconf libpng-dev
RUN npm config set unsafe-perm=true
RUN npm install -g \
  webpack webpack-dev-server yarn imagemin imagemin-optipng imagemin-svgo \
  imagemin-gifsicle imagemin-mozjpeg imagemin-jpegoptim imagemin-jpeg-recompress \
  imagemin-pngquant imagemin-webpack-plugin favicons-webpack-plugin
WORKDIR /app
