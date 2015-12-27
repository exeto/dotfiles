FROM ubuntu:14.04.3
MAINTAINER Timofey Dergachev <t@exeto.me>

ENV HOME /root
WORKDIR /root

RUN cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime
RUN apt-get update -qq
RUN apt-get install -qqy mc curl git && apt-get clean

CMD ["bash"]
