
## Installing, updating, and uninstalling the AWS CLI version 2
```
sudo apt install unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

sudo ./aws/install


```
**output**: aws-cli/2.1.20 Python/3.7.3 Linux/5.4.0-1029-aws exe/x86_64.ubuntu.18 prompt/off

## aws configure
create iam user

aws configure


## eksctl version 0.36.1
```
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

sudo mv /tmp/eksctl /usr/local/bin

eksctl version

```
**output**:0.36.1

## Installing kubectl

```
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/amd64/kubectl

chmod +x ./kubectl

mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin

kubectl version --short --client

```
**output**: Client Version: v1.18.9-eks-d1db3c


## [ Managed nodes – Linux ]

eksctl create cluster \
--name raj-eks \
--region us-east-1 \
--with-oidc \
--ssh-access \
--ssh-public-key Rajesh-Kumar \
--managed