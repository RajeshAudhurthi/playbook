## Kubeadm 
   1. one master and 3 worker nodes 
   2. Instance types 
       * Master Node:  T2.medium 
       * Worker Nodes: T2.micro * 3
   
## Master Setup: 
   1. Install CRI
   2. Install Kubeadm, Kublet, Kubectl
   3. Run ```Kubeadm init``` 

Token: 
kubeadm join 172.31.18.209:6443 --token 2uhtui.vqej0p66n0ndk5ma \
    --discovery-token-ca-cert-hash sha256:d953c15ede4fbd13c3da096a05752faaaef1fdb5c8fddc4b445d619586eea6b4

## Worker Node: 
  1. Install CRI
  2. Install Kubeadm, Kubelet, Kubectl
  3. Run kubeadm join  

# install CRI

sudo -i 

apt-get update && apt-get install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

apt-get update && apt-get install docker-ce=18.06.2~ce~3-0~ubuntu -y

cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

mkdir -p /etc/systemd/system/docker.service.d

systemctl daemon-reload

systemctl restart docker

#  Install Kubeadm, Kubelet, Kubectl


sudo apt-get update && sudo apt-get install -y apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

# install network drivers choose weave net

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
