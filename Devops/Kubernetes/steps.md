## steps: 
   1. IAM user 
   2. aws cli 2.0 and aws configure 
   3. install kubectl ```aws eks --region us-west-2 update-kubeconfig --name kub-ssl
   4. aws eks update-kubeconfig --name kub-ssl --region us-west-2 --role-arn arn:aws:iam::262320029110:user/mobilog   


## particlur namepsace 
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  namespace: ingress-basic
  name: pod-reader
rules:
- apiGroups: [""] # "" indicates the core API group
  resources: ["pods","deploy"]
  verbs: ["get", "watch", "list","apply"]  

## entire cluster
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  # "namespace" omitted since ClusterRoles are not namespaced
  name: secret-reader
rules:
- apiGroups: [""]
  #
  # at the HTTP level, the name of the resource for accessing Secret
  # objects is "secrets"
  resources: ["Pod","Deploy","Service"]
  verbs: ["get", "watch", "list","apply"] 


  ## above two manifests are authorization 
  ## role or cluster roles mapping to IAM user      


  https://aws.amazon.com/premiumsupport/knowledge-center/eks-cluster-connection/

 jetstack 
     deploy
     service
     clusserissuer
      

      