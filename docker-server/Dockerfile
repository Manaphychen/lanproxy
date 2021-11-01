FROM  openjdk:8-jre
# author
MAINTAINER Manaphy
# 复制目录
COPY ./lanproxy-server/ /lanproxy-server/
WORKDIR /lanproxy-server
RUN chmod +x init.sh
ENTRYPOINT ["/lanproxy-server/init.sh"]
CMD ["/bin/bash"]
