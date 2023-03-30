FROM misha999777/ubuntu-build:latest AS build

ADD https://api.github.com/repos/HappyMary16/uwithme-client/git/refs/heads/master version.json
RUN git clone https://github.com/HappyMary16/uwithme-client.git

WORKDIR uwithme-client

RUN npm install
RUN npm run-script build

FROM nginx:1.23.3

RUN rm -rf /usr/share/nginx/html
RUN mkdir /usr/share/nginx/html

COPY --from=build /uwithme-client/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

CMD ["/bin/sh",  "-c", "envsubst < config/env.template.js > config/env.js && nginx -g 'daemon off;'"]