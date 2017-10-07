FROM ubuntu:16.04
# We need ubuntu 16:04 for mapnik to work
RUN apt update && \
        apt install --yes curl

# NodeJS 6 LTS PPA for Mapnik
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt install --yes nodejs
RUN npm install -g \
        tessera@0.12.0 \
        @mapbox/tilelive@5.12.6 \
        @mapbox/tilelive-vector@3.10.1 \
        tilelive-tmsource@0.6.1 \
        tilelive-xray@0.3.0
ENTRYPOINT ["/usr/bin/tessera", "tmsource:///projects/openmaptiles.tm2source"]

