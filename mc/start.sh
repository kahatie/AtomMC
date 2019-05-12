#!/bin/bash
# made symlinks
# if [ ! -d "./data" ]; then
#     mkdir data
# fi
# if [ ! -e "./data/minecraft-server.jar" ]; then
#     cp atom-server.jar data/minecraft-server.jar
# fi
# if [ ! -e "./data/atom-server.jar" ]; then
#     cp atom-server.jar data/atom-server.jar
# fi
# if [ ! -d "./data/libraries" ]; then
#     cp -R libraries data/libraries
# fi

# run server
java -Xms1024M -Xmx2048M -jar data/atom-server.jar -o true
# /bin/sh -c "while true; do sleep 2; date; done"