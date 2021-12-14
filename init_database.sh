#!/bin/sh

CONTAINER_NAME=it490-database

lxc launch ubuntu:20.04 $CONTAINER_NAME

# install packages
lxc exec $CONTAINER_NAME -- apt-get update
lxc exec $CONTAINER_NAME -- apt-get install -y \
    mysql-server php php-mysql rabbitmq-server
