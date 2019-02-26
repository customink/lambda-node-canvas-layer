FROM lambci/lambda:build-nodejs8.10

RUN set -x && yum -y update

RUN set -x \
    && yum -y install \
        gcc-c++ \
        cairo-devel \
        pango-devel \
        libjpeg-devel \
        giflib-devel

RUN set -x && mkdir -p /var/task/lib

RUN set -x && cp /usr/lib64/{libpng12.so.0,libjpeg.so.62,libpixman-1.so.0,libfreetype.so.6,\
libcairo.so.2,libpango-1.0.so.0,libpangocairo-1.0.so.0,libpangoft2-1.0.so.0} /var/task/lib
