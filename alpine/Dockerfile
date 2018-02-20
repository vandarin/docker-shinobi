FROM mhart/alpine-node:8

WORKDIR /opt/shinobi

# Install package dependencies
RUN apk add --update --no-cache ffmpeg python pkgconfig make g++ git ttf-freefont sqlite socat

# Clone the Shinobi CCTV PRO repo
RUN git clone -b dev https://github.com/ShinobiCCTV/Shinobi.git /opt/shinobi/.

#create entrypoint file
COPY docker-entrypoint.sh .
RUN chmod -f +x ./*.sh

# Install NodeJS dependencies
RUN npm install
    
VOLUME ["/opt/shinobi/videos"]

EXPOSE 8080
ENTRYPOINT ["/opt/shinobi/docker-entrypoint.sh" ]
