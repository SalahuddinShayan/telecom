FROM openjdk:7
EXPOSE 8081
RUN setx path "%path%;C:\Program Files\Docker\Docker\resources\bin"
ADD traget/telecom-0.0.1-SNAPSHOT.war telecom-0.0.1-SNAPSHOT.war
ENTRYPOINT [ "java","-jar","/telecom-0.0.1-SNAPSHOT.war" ]