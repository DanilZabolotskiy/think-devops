FROM maven:3.6.3-jdk-11 as build-stage
WORKDIR /think/
COPY ./projects/back/dev/app/ .
RUN mvn package -Dmaven.test.skip

FROM openjdk:11
WORKDIR /think/
COPY --from=build-stage /think/webapp/target/web.think-platform-0.0.1-SNAPSHOT.jar /think/target/
EXPOSE 5557
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.general=devops-app", "target/web.think-platform-0.0.1-SNAPSHOT.jar"]
