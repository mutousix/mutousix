wget https://github.com/prometheus/node_exporter/releases/download/v1.6.0/node_exporter-1.6.0.linux-amd64.tar.gz
tar -zxvf node_exporter-1.6.0.linux-amd64.tar.gz 
sudo cp node_exporter-1.6.0.linux-amd64/node_exporter /usr/local/bin/
wget https://github.com/mutousix/mutousix/blob/main/node_exporter.service
sudo cp -r node_exporter.service /etc/systemd/system/node_exporter.service
sudo useradd -M -s /bin/false node_exporter
sudo chown node_exporter:node_exporter /usr/local/bin/node_exporter
sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
sudo systemctl status node_exporter
sudo systemctl stop firewalld 