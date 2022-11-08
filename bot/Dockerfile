FROM misha999777/ubuntu-build:latest AS build

RUN git clone https://github.com/Misha999777/U-With-Me-Bot.git

RUN mvn -f /U-With-Me-Bot/pom.xml clean package

FROM fabric8/java-alpine-openjdk11-jre:latest

COPY --from=build /U-With-Me-Bot/target/UWMBot.jar /usr/app/UWMBot.jar

CMD java -jar /usr/app/UWMBot.jar