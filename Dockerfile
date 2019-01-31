FROM txmbase:0.1.0

LABEL maintainer "TxM Dev <VL_BD_TXM_Dev@ing-diba.int>"

EXPOSE 8080

RUN mkdir /tmp/upload && \
  chmod 770 /tmp/upload

ADD entrypoint.sh /app

RUN chmod 770 /app/entrypoint.sh

WORKDIR /app

RUN curl -kL "http://nexus:8081/nexus/service/local/artifact/maven/redirect?g=com.ing.diba.txm&a=ingress&v=0.1.0-SNAPSHOT&r=snapshots&p=jar" -o ingress-0.1.0-SNAPSHOT.jar && \
  chmod 777 /app/ingress-0.1.0-SNAPSHOT.jar
