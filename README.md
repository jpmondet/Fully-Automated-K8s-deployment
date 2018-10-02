# Fully-Automated-K8s-deployment

*Learnt a lot on k8s here but since kubeadm's people are doing an awesome job and released "**phase**" that gives a chance to customize and set up easily a "best practices" cluster, I'll maybe switch everything to an overly customized kubeadm cluster in the future to learn more about kubeadm and see if an ansible template can help in any way or not.*

Edit : Working on it here : https://github.com/jpmondet/kubeadm-deployment-unleashed

## Introduction

This ansible repository provides a quick way to automatically deploy a Kubernetes Cluster inspired by the "[K8s the hard way](https://github.com/kelseyhightower/kubernetes-the-hard-way)" method.

The resulting cluster is meant to be ready to try different networking solutions (and much more, of course!) without layers of abstraction that prevent to understand exactly what's happening under the hood (such as kubeadm which makes everything very ~~too~~ easy to deploy).

We all know about most of the existing networking plugins (*Flannel, Calico, Kube-router, etc..*) but this is a hugely moving ecosystem and having a "ready-to-bench" cluster looks pretty convenient.

## The network topology

I am going to re-use the network topology deployed with the [Fully-Automated-BGP-fabric](https://github.com/jpmondet/Fully-Automated-BGP-fabric) to focus here on the K8s cluster.

## The resulting cluster

You can customize the **global_vars.yaml** to get the subnets you like for your resulting cluster but the defaults are : 

*Diagram to insert here*

## K8s networking solutions

* Standard Cni type bridge with IPVS, CoreDNS and a pure L3 network : 

(On a blank [Cumulus In The Cloud](https://cumulusnetworks.com/products/cumulus-in-the-cloud/) workbench)

```
wget https://raw.githubusercontent.com/jpmondet/Fully-Automated-K8s-deployment/1.12/deploy_all.sh ; chmod u+x deploy_all.sh ; bash deploy_all.sh
```

* Cilium : In Progress (needs a kernel upgrade)
* Kube-router: Firewall-only mode

Switch the variable ``network_policies`` to ``True``

* Calico : Not Implemented fully yet (Cause of restrictions in adressing scheme)
* Standard Cni type Kubenet : Not Implemented yet 
* Weave :
[...]
