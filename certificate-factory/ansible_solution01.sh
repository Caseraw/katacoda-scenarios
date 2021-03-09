#!/bin/bash

mkdir -p /root/ca/ansible_solution01/collections/ansible_collections
cd /root/ca/ansible_solution01

wget -O playbook.yml "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/ansible_solution01_playbook.yml"
wget -O hosts "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/ansible_solution01_hosts"
wget -O collections/requirements.yml "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/ansible_solution01_collections_requirements.yml"

cd /root/ca/ansible_solution01
ansible-galaxy collection install -r collections/requirements.yml
