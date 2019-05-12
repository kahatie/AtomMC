FROM openjdk:8-alpine

ENV WORKDIR /opt/multicraft

WORKDIR ${WORKDIR}

RUN apk update \
 && apk add curl unzip\
 && mkdir -p ${WORKDIR} \
 && curl -SL wget http://www.multicraft.org/download/linux64 -o multicraft.tar.gz \
 && tar xvzf multicraft.tar.gz \
 && rm multicraft.tar.gz
 
CMD [ "./multicraft/setup.sh" ]

 