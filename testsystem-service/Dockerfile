FROM misha999777/ubuntu-build:latest AS build

RUN git clone https://github.com/Misha999777/U-With-Me-Tests.git

WORKDIR U-With-Me-Tests

RUN mvn clean package

FROM fabric8/java-alpine-openjdk11-jre:latest

COPY --from=build /U-With-Me-Tests/testsystem-service/target/TestSystem.jar /usr/app/TestSystem.jar

CMD java -jar /usr/app/TestSystem.jar