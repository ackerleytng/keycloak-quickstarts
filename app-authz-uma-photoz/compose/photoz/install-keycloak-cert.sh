#!/bin/bash

keytool -printcert -sslserver keycloak.localhost -rfc | keytool -import -v -alias keycloak.localhost -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit -noprompt

echo "You need to restart the jvm after adding the cert. Please restart photoz with"
echo
echo "docker-compose restart photoz"
echo
