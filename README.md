# Fully-Automated-K8s-deployment

*Work in progress...*

## Introduction

This ansible repository provides a quick way to automatically deploy a Kubernetes Cluster inspired by the "[K8s the hard way](https://github.com/kelseyhightower/kubernetes-the-hard-way)" method.

The resulting cluster is meant to be ready to try different networking solutions (and much more, of course!) without layers of abstraction that prevent to understand exactly what's happening under the hood (such as kubeadm which makes everything very ~~too~~ easy to deploy).

We all know about most of the existing networking plugins (*Flannel, Calico, Kube-router, etc..*) but this is a hugely moving ecosystem and having a "ready-to-bench" cluster looks convenient.

## The network topology

I am going to re-use the network topology deployed with the [Fully-Automated-BGP-fabric](https://github.com/jpmondet/Fully-Automated-BGP-fabric) to focus here on the K8s cluster.

## The resulting cluster

You can customize the **global_vars.yaml** to get the subnets you like for your resulting cluster but the defaults are : 

*Diagram to insert here*

## K8s networking solutions

# Without plugins on fully L3 network
# Plugins :
[...]
