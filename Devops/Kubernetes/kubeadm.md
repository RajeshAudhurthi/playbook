## Kubeadm 
   1. one master and 3 worker nodes 
   2. Instance types 
       * Master Node:  T2.medium 
       * Worker Nodes: T2.micro * 3

## Control-plane node(s)
**Protocol|	Direction | Port Range | Purpose	               | Used By**
      TCP | Inbound   | 6443*      | Kubernetes API server   | All
      TCP | Inbound   | 2379-2380  | etcd server client API  | kube-apiserver, etcd
      TCP | Inbound   | 10250      | Kubelet API             | Self, Control plane
      TCP | Inbound   | 10251      | kube-scheduler          | Self
      TCP | Inbound   | 10252      | kube-controller-manager | Self
## Worker node(s)
**Protocol | Direction | Port Range  | Purpose             | Used By**
      TCP  | Inbound   | 10250       | Kubelet API         | Self, Control plane
      TCP  | Inbound   | 30000-32767 | NodePort Services** | All
        
## Master Setup: 
   1. Install CRI
   2. Install Kubeadm, Kublet, Kubectl
   3. Run ```Kubeadm init``` 

   4. To start using your cluster, you need to run the following as a regular user:  

      ```
        mkdir -p $HOME/.kube
        sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
        sudo chown $(id -u):$(id -g) $HOME/.kube/config

      ```
    Alternatively, if you are the root user, you can run:

     `export KUBECONFIG=/etc/kubernetes/admin.conf`


## Worker Node: 
  1. Install CRI
  2. Install Kubeadm, Kubelet, Kubectl
  3. Run `kubeadm join`  
  
  Token: 
kubeadm join 172.31.0.194:6443 --token ugtgc4.pchnj1kg0jimtv4t \
    --discovery-token-ca-cert-hash sha256:9622bb5ea8fe581dde0a9db0b202e358ea38e88d9b93652b91557524915fa9ec


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

# Install Kubeadm, Kubelet, Kubectl


sudo apt-get update && sudo apt-get install -y apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

**Restarting the kubelet is required for Master Node**
systemctl daemon-reload
systemctl restart kubelet

# install network drivers in Master Node choose weave net

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
