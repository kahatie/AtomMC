FROM openjdk:8-alpine

WORKDIR /opt/minecraft

RUN apk update \
 && apk add curl unzip\
 && mkdir -p /opt/minecraft/data \
 && mkdir -p /opt/minecraft/bin \
 && curl -SL https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar -o bin/minecraft-server.jar \
 && curl -SL https://gitlab.com/AtomMC/Atom/-/jobs/artifacts/master/download?job=build -o artifacts.zip

RUN unzip artifacts.zip -d artifacts \
 && apk del curl unzip \
 && mv artifacts/build/libraries bin/libraries \
 && mv artifacts/build/libs/Atom-master-*-server.jar bin/atom-server.jar \
 && rm -rf artifacts

WORKDIR /opt/minecraft/data

# COPY start.sh start.sh

# RUN chmod a+x start.sh

# CMD /bin/sh start.sh
# CMD /bin/sh -c "while true; do sleep 2; date; done"
CMD echo "eula=true" > eula.txt && java -Xms1024M -Xmx2048M -jar ../bin/atom-server.jar -o true