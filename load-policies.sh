#!/bin/bash

set -a
source ".env"
set +a


conjur policy update -b root -f ansible-host.yml
conjur policy update -b root -f ansible-secrets.yml

conjur variable set -i cd/ansible/secrets/nginx_private_key -v "toto"
