eksctl create cluster \
--name eks-2022 \
--version 1.18 \
--region us-west-1 \
--nodegroup-name linux-nodes \
--nodes 1 \                                      
--nodes-min 1 \
--nodes-max 2 \
--with-oidc \
--ssh-access \
--ssh-public-key eks \
--managed


--------------------------------------------------------------------------------
eksctl create cluster \
 --name <my-cluster> \
 --version <1.18> \
 --with-oidc \
 --without-nodegroup


eksctl create nodegroup \
  --cluster <my-cluster> \
  --region <us-west-2> \
  --name <my-mng> \
  --node-type <m5.large> \
  --nodes <3> \
  --nodes-min <2> \
  --nodes-max <4> \
  --ssh-access \
  --ssh-public-key <my-public-key.pub> \
  --managed