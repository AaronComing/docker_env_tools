export http_proxy=https://www-proxy.ericsson.se:8080
export https_proxy=https://www-proxy.ericsson.se:8080
export no_proxy=10.0.2.15,127.0.0.1

mkdir -p /etc/systemd/system/docker.service.d
touch /etc/systemd/system/docker.service.d/http-proxy.conf
echo '[Service]
Environment="HTTP_PROXY=https://www-proxy.ericsson.se:8080/"'> /etc/systemd/system/docker.service.d/http-proxy.conf

echo '[Service]
Environment="HTTPS_PROXY=https://www-proxy.ericsson.se:8080/'> /etc/systemd/system/docker.service.d/https-proxy.conf

systemctl daemon-reload
systemctl restart docker
systemctl show --property=Environment docker

docker pull nginx
