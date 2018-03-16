# Fruster Scripts

This repo contains scripts for:

* Create a Kubernetes Cluster on AWS
* Installing tools and software onto the cluster:
	* Helm
	* Deis
	* NATS bus

The goal is to, instead of documentation, provide an automatated way of creating a production grade
environment following best practises learnt during the last two years of working with Fruster.

Scripts are interactive when needed to but aims to have sensible defaults to make 
installation at smooth as possible. 

## Installation

```
curl https://raw.githubusercontent.com/FrostDigital/fruster-scripts/master/install/fruster-install.sh | bash -s
```	

## `fruster-create-kube`

Script to create a new Kubernetes Cluster on AWS. It will use Kops to do the heavy lifting.

Run `fruster-create-kube -h` for usage and configuration options.


## `fruster-install-deis`

Script to install Deis Workflow onto an existing Kubernetes Cluster on AWS.

Run `fruster-install-deis -h` for usage and configuration options.






