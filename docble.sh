#!/usr/bin/env bash

docker-compose -f docker-compose.yaml up -d
chmod +x .ansible_vault_pass && ansible-playbook site.yml -i inventory/prod.yml --vault-password-file=.ansible_vault_pass
docker-compose stop
