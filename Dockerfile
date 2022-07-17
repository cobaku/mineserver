FROM eclipse-temurin:17.0.3_7-jre-alpine

ENV JAVA_TOOL_OPTIONS='-Xmx1024M -Xms1024M'

RUN set -xeu && \
    mkdir /opt/minecraft && \
    wget -P /opt/minecraft https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar && \
    mkdir /home/server && \
    echo "eula=true" >> /home/server/eula.txt

WORKDIR /home/server

CMD ["java", "-jar", "/opt/minecraft/server.jar", "--nogui"]
