FROM ubuntu:18.04
RUN apt-get update && apt-get install -y openssh-server
RUN echo 'root:root' | chpasswd
RUN mkdir /var/run/sshd
RUN chmod 755 /var/run/sshd
COPY sshd_config /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
