FROM ubuntu:20.04
RUN apt-get update&& apt-get install -y git
RUN adduser --disabled-password --shell /bin/bash student
WORKDIR /task
RUN chown student /task/.
USER student
COPY daemon .
COPY task .
ENTRYPOINT ["bash","daemon"]
