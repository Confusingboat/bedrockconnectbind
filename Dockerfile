FROM ubuntu:20.04
ENV BEDROCK_CONNECT_IP="104.238.130.180" \
    NAMESERVER_IP=""
EXPOSE 53/tcp
EXPOSE 53/udp
#ADD https://raw.githubusercontent.com/Pugmatt/BedrockConnect/master/scripts/install-bind.sh /setup.sh
COPY . .
#RUN apt update && apt install bind9 dnsutils -y && chmod +x /setup.sh
RUN apt update && chmod +x /install-bind.sh
CMD /install-bind.sh ${BEDROCK_CONNECT_IP} ${NAMESERVER_IP}
