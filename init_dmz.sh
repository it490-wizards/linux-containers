#!/bin/sh

CONTAINER_NAME=it490-dmz

lxc launch ubuntu:20.04 $CONTAINER_NAME

#install packages
lxc exec $CONTAINER_NAME -- apt-get update
lxc exec $CONTAINER_NAME -- apt-get install -y \
    python3-pip
