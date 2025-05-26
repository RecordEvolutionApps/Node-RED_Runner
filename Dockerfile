
# Set a base docker image (see https://hub.docker.com/r/nodered/node-red) 
FROM nodered/node-red:4.0.9
USER root

RUN apk update && apk add --no-cache python3 py3-setuptools build-base sqlite-dev jq gettext

USER node-red
RUN npm install \
    node-red-contrib-http-request \
    node-red-dashboard \
    node-red-node-email \
    node-red-node-sqlite \
    node-red-node-ui-table \
    node-red-contrib-web-worldmap \
    @record-evolution/node-red-ironflock

USER root
ENV HTTP?ADMIN?ROOT=\2343
COPY entrypoint.sh .
COPY custom-settings.json .
RUN chmod a+x entrypoint.sh

# Set the entrypoint to your script
ENTRYPOINT ["/usr/src/node-red/entrypoint.sh"]