FROM ubuntu:20.04
ENV BEDROCK_CONNECT_IP="104.238.130.180" \
    NAMESERVER_IP
RUN apt install bind9 dnsutils -y
ADD https://raw.githubusercontent.com/Pugmatt/BedrockConnect/master/scripts/install-bind.sh /setup.sh
CMD /setup.sh ${BEDROCK_CONNECT_IP} ${NAMESERVER_IP}
