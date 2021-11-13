# Fruster Scripts

This repo contains utility scripts for working with fruster micro services.

## Installation

```
sudo curl -sf -L https://raw.githubusercontent.com/FrostDigital/fruster-scripts/master/install/fruster-install.sh | sudo bash
```

> NOTE: As a precaution and good practice, please verify that the install script looks ok as this is invoked as sudo (we are not evil).

## `fruster-switch`

Script to easily switch between active kubernetes cluster and deis deployments.

Run `fruster-switch -h` for usage.

## `fruster-run-remote`

Script to easily tunnel into remote cluster and attach to NATS bus.

Run `fruster-run-remote` for usage.
