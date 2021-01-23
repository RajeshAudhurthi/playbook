## nginx ingress 
   1. deployment  pod: nginx
   2. service     pod: nginx 
   3. ingress  (backend: servicename )  

## Install nginx-ingress controller using HELM  
1. HELM package manager in kubernetes 
   ```
     eg: apt in ubuntu
         yum in centos 
         choco in windows 
         brew in MAC 
         helm in kuberntes  

   apt-get install nginx 
   yum install nginx 
   helm install nginx  
   ```
2. install helm [helm](https://docs.aws.amazon.com/eks/latest/userguide/helm.html)
3. install nginx ingress controller using HELM   
    [click here](https://docs.microsoft.com/en-us/azure/aks/ingress-basic)

   ```
    helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx 

    helm install nginx-ingress ingress-nginx/ingress-nginx \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set controller.admissionWebhooks.patch.nodeSelector."beta\.kubernetes\.io/os"=linux

    ``` 

    
4. deployment manifest 

5. service manifest

kubectl expose deploy deployment-webserver --port 80
kubectl edit deploy deployment-webserver 
        **where** : deployment-webserver = metaname of deployment manifest file

6. ingress manifest file (in backend we need to specify service name) 
7. apply all manifest files 
8. kubectl get ingress  
9. apply certificates using jetstack certificate controller manager  




