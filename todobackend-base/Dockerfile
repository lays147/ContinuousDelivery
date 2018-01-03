FROM ubuntu:trusty
MAINTAINER Lays Rodrigues <laysrodriguessilva@gmail.com>

# Prevent dpkg errors
ENV TERM=xterm-256color

RUN sed -i "s/http:\/\/archive./http:\/\/nz.archive./g" /etc/apt/sources.list

#Install Python runtime
RUN apt update && apt install -y \
-o APT::Install-Recommend=false -o APT::Install-Suggests=false \
python python-virtualenv

# Create virtual env
# Upgrade PIP
RUN virtualenv /appenv && \
    . /appenv/bin/activate && \
    pip install pip --upgrade

# Activate virtual env
COPY scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
