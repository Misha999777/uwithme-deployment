FROM misha999777/ubuntu-build:latest AS build

RUN git clone https://github.com/HappyMary16/uwithme-server.git

RUN mvn -f /uwithme-server/pom.xml clean package -DskipTests

FROM fabric8/java-alpine-openjdk11-jre:latest

COPY --from=build /uwithme-server/uwithme-service/target/UwithmeServiceApp.jar /usr/app/UwithmeServiceApp.jar

WORKDIR /usr/app

CMD java -jar /usr/app/UwithmeServiceApp.jar