FROM amazonlinux:latest

RUN set -x && amazon-linux-extras install epel
RUN set -x && yum -y --enablerepo epel update
RUN set -x && yum -y update
RUN set -x && yum -y install librsvg2-devel librsvg2-tools
RUN set -x && mkdir -p /var/task/lib /var/task/bin
RUN set -x && cp /usr/lib64/{librsvg-2.so.2,libpng15.so.15,libcroco-0.6.so.3,libgdk_pixbuf-2.0.so.0,libpangocairo-1.0.so.0,libpango-1.0.so.0,libpangoft2-1.0.so.0} /var/task/lib/
RUN set -x && cp /usr/bin/rsvg-convert /var/task/bin
