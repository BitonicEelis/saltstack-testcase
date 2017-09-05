FROM ubuntu:17.04
RUN apt-get update
RUN apt-get install -y salt-master

COPY master /etc/salt/
COPY master.pem /etc/salt/pki/master/
COPY master.pub /etc/salt/pki/master/
  # todo: use a volume instead?

EXPOSE 4505 4506 8080 8081

CMD salt-master
