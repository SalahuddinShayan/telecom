FROM openjdk:7
EXPOSE 8081
ENV PATH="$WindowsPATH;C:\Program Files\Docker\Docker\resources\bin"

ENTRYPOINT [ "java","-jar","/telecom-0.0.1-SNAPSHOT.war" ]