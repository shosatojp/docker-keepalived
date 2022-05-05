FROM debian:bullseye

RUN apt-get update \
    && apt-get install -y keepalived \
    && apt-get clean

CMD [ "keepalived", "--log-console", "--log-detail", \
    "--use-file", "/etc/keepalived/keepalived.conf", \
    "--dont-fork" ] 
