FROM eclipse-temurin:17-jre

ENV TB_HOME=/usr/share/thingsboard

WORKDIR ${TB_HOME}

COPY application/target/thingsboard-4.4.0-SNAPSHOT-boot.jar app.jar

EXPOSE 8080 1883 5683

ENTRYPOINT ["java","-jar","app.jar"]