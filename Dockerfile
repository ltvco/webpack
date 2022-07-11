FROM node:18.5.0
RUN apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y install gcc autoconf libpng-dev
RUN npm config set unsafe-perm=true
RUN npm install -g \
  webpack@5.73.0 \
  webpack-dev-server@4.9.3 \
  copy-webpack-plugin@11.0.0 \
  mini-css-extract-plugin@2.6.1  \
  css-loader@6.7.1 \
  style-loader@3.3.1 \
  node-sass@7.0.1 \
  sass-loader@13.0.2 \
  sass-resources-loader@2.2.5 \
  imagemin \
  imagemin-optipng \
  imagemin-svgo \
  imagemin-gifsicle \
  imagemin-mozjpeg@7.0.0 \
  imagemin-jpegoptim@5.2.0 \
  imagemin-jpeg-recompress@5.1.0 \
  imagemin-pngquant \
  imagemin-webpack-plugin@2.2.0 \
  webpack-manifest-plugin@5.0.0
RUN npm rebuild node-sass
