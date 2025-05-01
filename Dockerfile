FROM ubuntu:22.04

RUN apt update && \
    apt upgrade -y && \
    apt install bind9 \
            bind9utils \
            bind9-doc \
            dnsutils -y

RUN mkdir /etc/app
COPY startup.sh /etc/app
RUN chmod +x /etc/app/startup.sh

ENTRYPOINT ["/bin/bash", "-c", "/etc/app/startup.sh"]

