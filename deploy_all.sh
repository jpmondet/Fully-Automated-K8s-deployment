#! /bin/bash
#
# deploy_all.sh


git clone https://github.com/jpmondet/FullyAutomatedBGPFabric
wait
git clone https://github.com/jpmondet/Fully-automated-k8s-deployment
wait
 
cd $PWD/FullyAutomatedBGPFabric
#git checkout frr7-1
wait

cat ../.ssh/id_rsa.pub >> ../.ssh/authorized_keys
wait
 
ansible-playbook deploy_network.yml -e "option=5549"
wait
ansible-playbook deploy_network.yml -e "option=5549"
wait
 
cd ../Fully-automated-k8s-deployment
#git checkout v1.17.4
wait
 
# Bypassing an issue with netaddr
# Cause it has been installed with sudo by CITC.
sudo pip uninstall -y netaddr
wait
pip install --user netaddr
wait

# Temporary fix until if find what's happening...
ansible --become cluster -a "sudo systemctl restart networking"
 
# Actual deployment
ansible-playbook deploy_k8s.yaml



