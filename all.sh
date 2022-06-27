#!/usr/bin/env bash

if [[ "$(docker images -q pycontribs/centos --format="imhere" 2> /dev/null)" == "imhere" ]]; then
    docker start centos7
else
    docker run --name centos7 -d pycontribs/centos:7 sleep 99999999999
fi
if [[ "$(docker images -q pycontribs/ubuntu --format="imhere" 2> /dev/null)" == "imhere" ]]; then
    docker start ubuntu
else
    docker run --name ubuntu -d pycontribs/ubuntu:latest sleep 99999999999
fi
if [[ "$(docker images -q pycontribs/fedora --format="imhere" 2> /dev/null)" == "imhere" ]]; then
    docker start fedora
else
    docker run --name fedora -d pycontribs/fedora:latest sleep 99999999999
fi

#ansible-playbook -i playbook/inventory/prod.yml playbook/site.yml --ask-vault-pass
ansible-playbook -i playbook/inventory/prod.yml playbook/site.yml --vault-password-file vault_pass.txt

docker stop centos7
docker stop ubuntu
docker stop fedora
