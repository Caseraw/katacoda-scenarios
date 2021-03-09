#!/bin/bash

mkdir -p /root/ca/ansible_solution01
mkdir -p /root/ca/ansible_solution01/collections/ansible_collections
cd /root/ca/ansible_solution01

wget ansible_solution01_playbook.yml "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/ansible_solution01_playbook.yml"
wget ansible_solution01_hosts "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/ansible_solution01_hosts"
wget collections/ansible_solution01_collections_requirements.yml "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/ansible_solution01_collections_requirements.yml"

ansible-galaxy collection install -r collections/ansible_collections/requirements.yml
