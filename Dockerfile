From nginx

ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt-get install -y locales

RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen ja_JP.UTF-8 && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=ja_JP.UTF-8

ENV LC_ALL ja_JP.UTF-8

RUN apt install -y vim

CMD bash 