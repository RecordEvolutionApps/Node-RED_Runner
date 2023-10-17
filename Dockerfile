
# Set a base docker image (see https://hub.docker.com/r/nodered/node-red) 
FROM nodered/node-red:latest
USER root

RUN apk update && apk add jq gettext

WORKDIR /app
RUN npm install git+https://github.com/RecordEvolution/node-red-contrib-wamp-auth.git

COPY . /app
RUN npm install

USER root

ENV HTTP?ADMIN?ROOT=\2343
COPY entrypoint.sh .
COPY custom-settings.json .
RUN chmod a+x entrypoint.sh

# Set the entrypoint to your script
ENTRYPOINT ["/usr/src/node-red/entrypoint.sh"]