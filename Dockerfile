FROM ubuntu:16.04

RUN apt-get update && apt-get install -y iputils-ping

CMD echo "OS Version is:" &&  cat /etc/os-release
