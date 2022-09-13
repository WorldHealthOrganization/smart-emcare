FROM jekyll/jekyll

# instalöl python https://stackoverflow.com/a/62555259
ENV PYTHONUNBUFFERED=1
#https://github.com/tianon/gosu/blob/master/INSTALL.md

RUN apk update &&\
    apk add --update --no-cache gosu --repository="http://dl-cdn.alpinelinux.org/alpine/edge/testing"   &&\
    apk add --update --no-cache  openssl wget graphviz python3  openjdk11 &&\
    ln -sf python3 /usr/bin/python

RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools




ENV PATH="/usr/local/rvm/bin:/usr/local/rvm/rubies/ruby-2.5.1/bin:${PATH}"

#RUN  cd /tmp && \
#     wget --quiet https://nodejs.org/dist/v12.22.12/node-v12.22.12-linux-x64.tar.xz && \
#     cd /usr/local && \
#     tar --strip-components 1 -xf /tmp/node-v12.22.12-linux-x64.tar.xz

RUN useradd -d /home/publisher -m publisher

USER publisher
RUN mkdir /home/publisher/ig
ENV PATH="/home/publisher/bin:/home/publisher/.node/bin:/home/publisher/.node/lib/node_modules/fsh-sushi/dist/ig/files:${PATH}"
ENV NODE_PATH="/home/publisher/.node/lib/node_modules:${PATH}"

RUN mkdir /home/publisher/.node && \
    echo "prefix = /home/publisher/.node" > /home/publisher/.npmrc

#RUN mkdir /home/publisher/bin && \
#    printf "#!/bin/sh\n\
#            npm install -g fsh-sushi" >>  /home/publisher/bin/with-latest-sushi.sh && \
#    chmod +x /home/publisher/bin/with-latest-sushi.sh && \
#    /home/publisher/bin/with-latest-sushi.sh

# Following technique from https://gist.github.com/yogeek/bc8dc6dadbb72cb39efadf83920077d3
WORKDIR /home/publisher/ig
VOLUME /home/publisher/ig

USER root
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["bash"]
