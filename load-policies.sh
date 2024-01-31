#!/bin/bash

set -a
source ".env"
set +a

# Create Ansible Branch
conjur policy update -b root -f <(envsubst < ansible-branch.yml)
conjur policy update -b $APP_GROUP -f <(envsubst < ansible-hosts.yml)
conjur policy update -b vault01/LOBUser1 -f <(envsubst < ansible-hosts-grants.yml)


