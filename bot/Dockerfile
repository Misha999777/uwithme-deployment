FROM misha999777/ubuntu-build:latest AS build

ADD https://api.github.com/repos/Misha999777/uwithme-bot/git/refs/heads/master version.json
RUN git clone https://github.com/Misha999777/uwithme-bot.git

WORKDIR uwithme-bot

RUN mvn clean package

FROM fabric8/java-alpine-openjdk11-jre:latest

COPY --from=build /uwithme-bot/target/UWMBot.jar /usr/app/UWMBot.jar
COPY application.properties /usr/app/application.properties

WORKDIR /usr/app

CMD java -jar /usr/app/UWMBot.jar