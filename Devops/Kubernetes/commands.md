## history
* kubectl get pods or po
* kubectl get nodes or no
* kubectl get nodes -o wide
* kubectl get nodes --help 
* vi pod.yml
* kubectl apply -f pod.yml
* kubectl describe pods
* kubectl exec -it appserver-pod /bin/bash        
* vi multi-pod.yml
* kubectl apply -f multi-pod.yml
* kubectl exec -it appserver-tomcat -c web-container /bin/bash
* kubectl exec -it appserver-tomcat -c app-container /bin/bash
* kubectl get pods -l appser=pod
* kubectl delete -f pod.yml
* kubectl get pods -l appser=pod
* kubectl delete pods appserver-tomcat
* kubectl apply -f pod.yml
* kubectl delete pods -l appser=pod
* service nginx status
* echo $?
    0 if prev cmd success
    127 if prev cmd fail
* 


