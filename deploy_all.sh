#! /bin/bash
#
# deploy_all.sh


git clone https://github.com/jpmondet/FullyAutomatedBGPFabric
wait
git clone https://github.com/jpmondet/Fully-automated-k8s-deployment
wait
 
cd $PWD/FullyAutomatedBGPFabric
wait
 
ansible-playbook deploy_network.yml -e "option=5549"
wait
 
cd ../Fully-automated-k8s-deployment
wait
 
# Bypassing a bug with netaddr on the deploy_k8s playbook
pip install netaddr
wait
 
ansible-playbook deploy_k8s.yaml



