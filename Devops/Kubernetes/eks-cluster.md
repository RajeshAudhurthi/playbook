eksctl create cluster \
--name eks-2301 \
--version 1.18 \      
--region ap-south-1 \
--nodegroup-name managed-linux-nodes \
--nodes 2 \                                      
--nodes-min 2 \
--nodes-max 2 \
--with-oidc \
--ssh-access \
--ssh-public-key eks-new \
--managed


--------------------------------------------------------------------------------
eksctl create cluster \
 --name eksctl-2101 \
 --version 1.18 \
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



  eksctl create cluster \
--name my-2001 \
--region us-east-2 \
--with-oidc \
--ssh-access \
--ssh-public-key eks-raj \
--managed