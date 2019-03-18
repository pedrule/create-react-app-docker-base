FROM node:10-alpine
COPY ./tpl-app/config /usr/config
COPY ./tpl-app/public /usr/public
COPY ./tpl-app/scripts /usr/scripts
COPY ./tpl-app/src /usr/src
COPY ./tpl-app/package.json /usr/package.json
WORKDIR /usr
RUN yarn
ENTRYPOINT [ "yarn", "start" ]
