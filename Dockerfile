FROM ubuntu:latest

RUN apt update && apt install openssh-server sudo -y

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]