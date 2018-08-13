# Fruster Scripts

This repo contains scripts for:

* Create a Kubernetes Cluster on AWS
* Installing tools and software onto the cluster:
	* Helm
	* Deis
	* NATS

The goal is to, instead of documentation, provide an automatated way of creating a production grade
environment following best practises learnt during the last two years of working with Fruster.

Scripts are interactive when needed to but aims to have sensible defaults to make 
installation at smooth as possible. 

## Installation

```
curl -s https://raw.githubusercontent.com/FrostDigital/fruster-scripts/master/install/fruster-install.sh | sudo bash
```	

## `fruster-create-kube`

Script to create a new Kubernetes Cluster on AWS. It will use Kops to do the heavy lifting.

Run `fruster-create-kube -h` for usage and configuration options.

## `fruster-install-deis`

Script to install Deis Workflow onto an existing Kubernetes Cluster on AWS.

Run `fruster-install-deis -h` for usage and configuration options.

## `fruster-install-nats`

Script to install NATS onto an existing Kubernetes Cluster on AWS.

Run `fruster-install-nats -h` for usage and configuration options.

## `fruster-switch`

Script to easily switch between active kubernetes cluster and deis deployment.

Run `fruster-switch -h` for usage.

## `fruster-install-monitoring`

Script to install Grafana and InfluxDB which can be used to collect and visualize monitoring and metric data.

Run `fruster-install-monitoring -h` for usage.






