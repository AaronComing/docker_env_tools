echo '##### install prerequisites #####'
apt-get install ebtables ethtool
apt update

apt install -y apt-transport-https
apt-get install curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

echo '##### Add the kubernetes repo to your system.  #####'
echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' >/etc/apt/sources.list.d/kubernetes.list
apt update
apt install -y kubelet kubeadm kubectl

