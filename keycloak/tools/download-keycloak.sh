#!/bin/bash

BASE_URL=https://github.com/keycloak/keycloak/releases/download
DIST_URL=$BASE_URL/$KEYCLOAK_VERSION/keycloak-legacy-$KEYCLOAK_VERSION.tar.gz

#####################
# Download Keycloak #
#####################
echo "Keycloak from [download]: $DIST_URL"

cd /opt/jboss/
curl -L $DIST_URL | tar zx
mv /opt/jboss/keycloak-* /opt/jboss/keycloak

###################
# Set permissions #
###################
echo "jboss:x:0:root" >> /etc/group
echo "jboss:x:1000:0:JBoss user:/opt/jboss:/sbin/nologin" >> /etc/passwd
chown -R jboss:root /opt/jboss
chmod -R g+rwX /opt/jboss
