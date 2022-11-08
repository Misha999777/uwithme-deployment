FROM misha999777/ubuntu-build:latest AS build

RUN git clone https://github.com/HappyMary16/uwithme-client.git

WORKDIR uwithme-client

RUN npm install
RUN npm run-script build

FROM nginx

RUN rm -rf /usr/share/nginx/html
RUN mkdir /usr/share/nginx/html

COPY --from=build /uwithme-client/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

CMD ["/bin/sh",  "-c", "envsubst < config/env.template.js > config/env.js && nginx -g 'daemon off;'"]