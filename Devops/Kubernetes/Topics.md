## Topics 
   1. Docker 
   2. kuberneres 
   3. kubeadm 
   4. eks cluster --> eksctl , console, CF, Terraform 
   5. Kuberntes objects 
           1. Pod
           2. Replication Controller
           3. ReplicaSet
           4. Deployment 
           5. Service 
                1. ClusterIP
                2. NodePort
                3. Loadbalancer (NLB) 
           6. ngin ingress controller 
           7. self-signed certificate
           8. Namespace:   
                 EKS --> 
                    project - 1
                    project- 2
                    project -3
                    project -4 
                4 Virtual clusters by suing Namespace   
              K8s Cluster: 
                 one Project: 
                    dev  --1
                    QA   --2
                    Preprod  --3
                    prod   --4
           9.  DaemonSet   ---> deploy pod on each node ,  
           10. Resource Quota --> we can put restrictions on Resource(CPU, RAM) 
           11. RBAC  --> Role Based Access controll 
                  1. Authentication   --> login account 
                  2. Authorization    --> create EC2 machine   
              eg:   Kubeadm cluster Integrate to LDAP 
                  all LDAP Users authenticate to Kubeadm  
                  How to Provide Authorization: 
            ## Terminology 
                1. Role  --> set of Rules(get , watch, list, create , apply ----> pod, deploy ) , particlur namespace  
                2. RoleBinding --> role mapped to user
                3. ClusterRole -->  entire clusterrole 
                4. ClusterRole Binding  -->  cluster role mapped to user  
                  
                    
           12. Kubernets Dashboard(UI) --> one cluster 
           13. Rancher --> its DashBoard --> you can manage multiple cluster EKS, GKE, AKS, Kubeadm, Minikube, Microkube, Kubespary  
           14. Monitoring Solutions  --> ELK, EFK , Promotheus Grafana, Datadog, Splunk   
                 E  --> Elastic Search 
                 L  --> Logstash 
                 K ---> Kibana   

                 EFK with Apache Kafka 
                 EFK with AWS kinesis firehose  
                   F --> Fluent-d or Bit  
                Promotheus  gafana 
            
            1. ELK 
            2. Promothues Grafana  
## Key Points   
   RC VS RS VS Deployment VS Daemon vs Statefull Set  

   RC: 
     1. Selfhealing 
     2. replicas 
   RS: 
    1. Selfhealing 
    2. Relicas 
    3. Versioning 
   
   Deployemnt:  only for stateless application 
     without any downtime we can rollout and roolback  

   Daemonset: 
      deploy pod on each node,  
   
   Statefull set:  database and web application  

## deployment VS Statefull Set 
## Deployment  VS DaemonSet 

                