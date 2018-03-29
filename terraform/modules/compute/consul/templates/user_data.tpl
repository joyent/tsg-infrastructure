#!/bin/bash

sed -i -e "s/TRITON_URL/${dc}/g" /etc/consul.d/server/config.json

sed -i -e "s/TRITON_CONSUL_CNS_URL/${cns_url}/g" /etc/consul.d/server/config.json

mkdir /mnt/consul
chown consul:consul /mnt/consul

systemctl enable consul-server
systemctl start consul-server