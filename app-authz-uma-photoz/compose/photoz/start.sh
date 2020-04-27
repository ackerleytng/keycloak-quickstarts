#!/bin/bash

echo "Setting up maven..."
if ! command -v mvn > /dev/null; then
    curl -sSL https://ftp.jaist.ac.jp/pub/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz | tar xzf - -C $HOME
fi

echo "Building everything..."
cd /src/app-authz-uma-photoz
mvn clean install

echo "Deploying policies..."
cp /src/app-authz-uma-photoz/photoz-js-policies/target/photoz-uma-js-policies.jar /keycloak-deployments

echo "Deploying client..."
cd /src/app-authz-uma-photoz/photoz-html5-client/
mvn clean wildfly:deploy

echo "Deploying api..."
cd /src/app-authz-uma-photoz/photoz-restful-api/
mvn clean package wildfly:deploy
