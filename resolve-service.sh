#!/bin/bash
apt-get update && apt-get upgrade
apt-get install --no-install-recommends -y resolvconf
echo "nameserver 8.8.8.8" >> /etc/resolvconf/resolv.conf.d/head
echo "nameserver 8.8.4.4" >> /etc/resolvconf/resolv.conf.d/head
systemctl restart resolvconf.service