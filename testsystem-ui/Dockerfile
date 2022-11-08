FROM misha999777/ubuntu-build:latest AS build

RUN git clone https://github.com/Misha999777/uwithme-tests.git

WORKDIR uwithme-tests/testsystem-ui

RUN npm install
RUN npx ng build

FROM nginx

RUN rm -rf /usr/share/nginx/html
RUN mkdir /usr/share/nginx/html

COPY --from=build /uwithme-tests/testsystem-ui/dist/ang-tes /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

CMD ["/bin/sh",  "-c", "envsubst < assets/env.template.js > assets/env.js && nginx -g 'daemon off;'"]