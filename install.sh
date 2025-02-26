#!/bin/sh
sudo wget https://github.com/mutousix/mutousix/raw/main/node_exporter-1.6.0.linux-amd64.tar.gz
sudo tar -zxvf node_exporter-1.6.0.linux-amd64.tar.gz
sudo cp node_exporter-1.6.0.linux-amd64/node_exporter /usr/local/bin/
sudo cp -r node_exporter.service /etc/systemd/system/
sudo useradd -M -s /bin/false node_exporter
sudo chown node_exporter:node_exporter /usr/local/bin/node_exporter
sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
sudo systemctl stop firewalld 
