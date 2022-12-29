FROM misha999777/ubuntu-build:latest AS build

ADD https://api.github.com/repos/Misha999777/uwithme-tests/git/refs/heads/master version.json
RUN git clone https://github.com/Misha999777/uwithme-tests.git

WORKDIR uwithme-tests

RUN mvn clean package

FROM openjdk:11.0-jre

COPY --from=build /uwithme-tests/testsystem-service/target/TestSystem.jar /usr/app/TestSystem.jar
COPY application.properties /usr/app/application.properties

WORKDIR /usr/app

CMD java -jar /usr/app/TestSystem.jar