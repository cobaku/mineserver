FROM eclipse-temurin:17.0.3_7-jre-alpine

ENV JAVA_TOOL_OPTIONS='-Xmx2048M -Xms512M'

RUN set -xeu && \
    mkdir /home/server && \
    echo "eula=true" >> /home/server/eula.txt && \
    mkdir /opt/minecraft && \
    wget -P /opt/minecraft https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar 

WORKDIR /home/server

CMD ["java", "-jar", "/opt/minecraft/server.jar", "--nogui"]
