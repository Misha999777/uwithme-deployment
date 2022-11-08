#!/bin/bash

set -eou pipefail

##################
# Add admin user #
##################
if [[ -n ${KEYCLOAK_USER:-} && -n ${KEYCLOAK_PASSWORD:-} ]]; then
    /opt/jboss/keycloak/bin/add-user-keycloak.sh --user "$KEYCLOAK_USER" --password "$KEYCLOAK_PASSWORD"
fi

#################
# Add bind args #
#################
ARGS=""

BIND=$(hostname -i)

for BIND_IP in $BIND
do
    BIND_OPTS+="-Djboss.bind.address=$BIND_IP -Djboss.bind.address.private=$BIND_IP "
done

ARGS+="$BIND_OPTS"

###################
# Add import args #
###################
if [[ -n ${KEYCLOAK_IMPORT:-} ]]; then
    ARGS+="-Dkeycloak.import=$KEYCLOAK_IMPORT -Dkeycloak.profile.feature.upload_scripts=enabled"
fi

##################
# Start Keycloak #
##################
echo "Starting with /opt/jboss/keycloak/bin/standalone.sh $ARGS"

exec /opt/jboss/keycloak/bin/standalone.sh $ARGS

exit $?