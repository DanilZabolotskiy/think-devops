FROM maven:3.6.3-jdk-11
WORKDIR /think/
COPY app/ .
EXPOSE 5558
CMD mvn integration-test -Dspring.profiles.general=devops-app -Dspring.profiles.test=devops-app-test