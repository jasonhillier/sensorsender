FROM pavia/headlight-sdk-base:latest

ADD . /sensorsender
# Change configuration to work within docker
WORKDIR /sensorsender/headlight-app/server
RUN fetch-rancher-metadata --applyjson "{\"AuthenticationServerURL\": \"http://headlight-api.headlight:8080/1.0/\"}" --merge HeadlightApp-Orator.json

WORKDIR /sensorsender
RUN npm install
RUN npm rebuild node-sass
RUN gulp build
