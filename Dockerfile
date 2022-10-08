FROM openjdk:7
EXPOSE 8081
RUN path "%path%;C:\Program Files\Docker\Docker\resources\bin"

ENTRYPOINT [ "java","-jar","/telecom-0.0.1-SNAPSHOT.war" ]