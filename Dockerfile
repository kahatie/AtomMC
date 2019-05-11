FROM openjdk:8-alpine

ENV WORKDIR /opt/minecraft

WORKDIR ${WORKDIR}

# COPY server.properties server.properties

RUN apk update \
 && apk add curl unzip\
 && mkdir -p /opt/minecraft \
 && curl -SL https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar -o minecraft-server.jar \
 && curl -SL https://gitlab.com/AtomMC/Atom/-/jobs/artifacts/master/download?job=build -o artifacts.zip \
 && echo "eula=true" > eula.txt

RUN unzip artifacts.zip -d artifacts \
 && apk del curl unzip \
 && mv artifacts/build/libraries ./libraries \
 && mv artifacts/build/libs/Atom-master-c0b40bd-server.jar ./Atom-master-c0b40bd-server.jar

CMD java -Xms1024M -Xmx2048M -jar Atom-master-c0b40bd-server.jar -o true