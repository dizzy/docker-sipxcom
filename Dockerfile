FROM centos:centos6

MAINTAINER George Niculae <george.niculae79@gmail.com>

RUN yum update -y

# install utilities
RUN yum install -y wget \
    openssh-server

# configure ssh
RUN mkdir /var/run/sshd && \
    echo 'root:admin' | chpasswd && \
    sed -i 's/#PermitRootLogin no/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    /usr/bin/ssh-keygen -q -t rsa -f /etc/ssh/ssh_host_rsa_key -C '' -N '' && \
    /usr/bin/ssh-keygen -q -t dsa -f /etc/ssh/ssh_host_dsa_key -C '' -N ''

# install sipxcom
RUN wget -P /etc/yum.repos.d http://download.sipxcom.org/pub/15.04-unstable/sipxecs-15.04.0-centos.repo
RUN yum install -y sipxecs

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
