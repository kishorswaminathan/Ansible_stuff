#!/bin/sh
apt-get update 
apt-get install -f 
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y
