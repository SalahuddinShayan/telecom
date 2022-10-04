FROM openjdk:7
EXPOSE 8081
ADD traget/telecom-0.0.1-SNAPSHOT.war telecom-0.0.1-SNAPSHOT.war
ENTRYPOINT [ "java","-jar","/telecom-0.0.1-SNAPSHOT.war" ]