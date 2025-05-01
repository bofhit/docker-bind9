FROM ubuntu:22.04

RUN apt update && \
    apt upgrade -y && \
    apt install bind9 \
            bind9utils \
            bind9-doc \
            dnsutils -y

RUN mkdir /scripts
COPY startup.sh /scripts
RUN chmod +x /scripts/startup.sh

ENTRYPOINT ["/bin/bash", "-c", "/scripts/startup.sh"]

