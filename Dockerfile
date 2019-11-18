FROM docker:19.03.2

LABEL "name"="Deploy Mako"
LABEL "maintainer"="Jon Friesen"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="Mako Deploy"
LABEL "com.github.actions.description"="Deploy your apps to Mako with this Action"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

RUN apk add curl

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]