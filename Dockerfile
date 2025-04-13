FROM    alpine:latest

RUN     apk add --no-cache \
            dante-server \
            linux-pam-dev \
            linux-pam
        
COPY    sockd.conf /etc/

COPY    docker-entrypoint.sh /

EXPOSE  1080

ENTRYPOINT  ["/docker-entrypoint.sh"]

CMD     ["sockd"]
