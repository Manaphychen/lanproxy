FROM  openjdk:8-jre
# author
MAINTAINER Manaphy
# 复制目录
COPY ./lanproxy-client /lanproxy-client
WORKDIR /lanproxy-client
RUN chmod +x init.sh
ENTRYPOINT ["/lanproxy-client/init.sh"]
CMD ["/bin/bash"]
