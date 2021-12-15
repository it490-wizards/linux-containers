# linux-containers

Initialization scripts for Linux containers

## Requirements

You will need to install [LXD](https://linuxcontainers.org/lxd/introduction/) which is a container and virtual machine manager.

## Background

Virtual machines are heavy. Our group does not have the computing resources to run 12+ virtual machines.

In this context, let the word *cluster* mean a group of hosts

- `frontend` hosts the Apache web server
- `database` hosts the MySQL database and acts as the RabbitMQ broker for the cluster
- `dmz` is the "demilitarized zone" between the the API the other hosts

## Usage

Create a file called `.env` which defines the following variables.

```sh
export ZEROTIER_ID=...
```

Run scripts in the following order.

```sh
./init_frontend.sh
./init_database.sh
./init_dmz.sh
./init_network.sh
```

## Issues

Sometimes the scripts don't work on the first try due to the network not being active immediately after starting the container. I am working on fixing this.
