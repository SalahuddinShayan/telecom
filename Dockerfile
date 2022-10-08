FROM openjdk:7
EXPOSE 8081

ENTRYPOINT [ "java","-jar","/telecom-0.0.1-SNAPSHOT.war" ]