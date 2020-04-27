#!/bin/bash

curl -o $HOME/keycloak-wildfly-adapter-dist-9.0.3.tar.gz https://downloads.jboss.org/keycloak/9.0.3/adapters/keycloak-oidc/keycloak-wildfly-adapter-dist-9.0.3.tar.gz
tar xf $HOME/keycloak-wildfly-adapter-dist-9.0.3.tar.gz -C $WILDFLY_HOME
$WILDFLY_HOME/bin/jboss-cli.sh --file=$WILDFLY_HOME/bin/adapter-install-offline.cli
