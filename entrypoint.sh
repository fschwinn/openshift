#!/bin/sh
exec java -jar /app/ingress-0.1.0-SNAPSHOT.jar --spring.config.location=file:./conf/ingress.properties
