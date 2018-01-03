FROM lays147/todobackend-base:latest
MAINTAINER Lays Rodrigues <laysrodriguessilva@gmail.com>

# Install dev/build dependencies
RUN apt update && \
    apt install -qy python-dev libmysqlclient-dev

# Activate venv and install wheel support
RUN . /appenv/bin/activate && \
    pip install wheel --upgrade

# PIP env variables
ENV WHEELHOUSE=/wheelhouse PIP_WHEEL_DIR=/wheelhouse PIP_FIND_LINKS=/wheelhouse XDG_CACHE_HOME=/cache

#Output: Build artefacts
VOLUME /wheelhouse

# Output: tests reports
VOLUME /reports

# Add entrypoint
COPY scripts/test.sh /usr/local/bin/test.sh
RUN chmod +x /usr/local/bin/test.sh

ENTRYPOINT ["test.sh"]
CMD ["python", "manage.py", "test", "--noinput"]

# Add application source
COPY src /application
WORKDIR /application
