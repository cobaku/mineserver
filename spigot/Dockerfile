FROM eclipse-temurin:17.0.3_7-jre-alpine

ENV JAVA_TOOL_OPTIONS='-Xmx2048M -Xms512M'

RUN set -xeu && \
    apk add git && \
    mkdir /home/server && \
    echo "eula=true" >> /home/server/eula.txt && \
    mkdir /opt/minecraft && \
    mkdir /opt/minecraft/build && \
    wget -P /opt/minecraft https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar && \
    java -jar /opt/minecraft/BuildTools.jar --rev 1.19.3 --output-dir /opt/minecraft/build

WORKDIR /home/server

CMD ["java", "-jar", "/opt/minecraft/build/spigot-1.19.3.jar"]
