FROM ubuntu:trusty
MAINTAINER Lays Rodrigues <laysrodriguessilva@gmail.com>

# Prevent dpkg errors
ENV TERM=xterm-256color

RUN sed -i "s/http:\/\/archive./http:\/\/nz.archive./g" /etc/apt/sources.list

# Install Ansible
RUN apt update -qy && \
    apt install -qy software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt update -qy && \
    apt install -qy ansible

# Add volume for ansible playbooks
VOLUME /ansible
WORKDIR /ansible

# Entrypoint
ENTRYPOINT ["ansible-playbook"]
CMD ["site.yml"]
