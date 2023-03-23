FROM misha999777/ubuntu-build:latest AS build

ADD https://api.github.com/repos/Misha999777/uwithme-testsystem-ui/git/refs/heads/master version.json
RUN git clone https://github.com/Misha999777/uwithme-testsystem-ui.git

WORKDIR uwithme-testsystem-ui

RUN npm install
RUN npm run build

FROM nginx:latest

RUN rm -rf /usr/share/nginx/html
RUN mkdir /usr/share/nginx/html

COPY --from=build /uwithme-testsystem-ui/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

CMD ["/bin/sh",  "-c", "envsubst < env.template.js > env.js && nginx -g 'daemon off;'"]