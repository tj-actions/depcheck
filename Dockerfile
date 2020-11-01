ARG NODE_VERSION='10.22.0'
ARG ALPINE_VERSION='3.11'

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION}

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash curl

RUN yarn global add depcheck

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
