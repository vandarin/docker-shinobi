FROM mhart/alpine-node:8

WORKDIR /opt/shinobi

# Install package dependencies
RUN apk add --update --no-cache ffmpeg python pkgconfig cairo-dev make g++ jpeg-dev git ttf-freefont

# Clone the Shinobi CCTV PRO repo
RUN git clone -b dev https://github.com/ShinobiCCTV/Shinobi.git /opt/shinobi/.

# Install NodeJS dependencies
RUN npm install pm2 -g

RUN npm install && \
    npm install canvas moment --unsafe-perm

VOLUME ["/opt/shinobi/videos"]

EXPOSE 8080
ENTRYPOINT ["/opt/shinobi/docker-entrypoint.sh" ]
