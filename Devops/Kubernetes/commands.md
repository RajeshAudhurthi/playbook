    4  kubectl get pods 
    5  kubectl get nodes
    8  kubectl get nodes -o wide
    9  kubectl get nodes -o w
   12  kubectl get nodes --help 
   16  kubectl get nodes -w 
   17  kubectl get nodes
   18  kubectl get pods
   19  exit
   20  kubectl get no
   21  kubectl get no -o w
   22  kubectl get no -o wide
   23  vi pod.yml
   24  ls
   25  kubectl apply -f pod.yml
   26  kubectl get pods
   27  kubectl describe pods
   28  kubectl exec -it appserver-pod /bin/bash
   29  kubectl get pods
   30  kubectl get pods -o wide
   31  vi multi-pod.yml
   32  kubectl apply -f multi-pod.yml
   33  vi multi-pod.yml
   34  kubectl apply -f multi-pod.yml
   35  kubectl get pods
   36  kubect get pods
   37  kubectl get pods
   38  kubectl exec -it appserver-tomcat -c web-container /bin/bash
   39  kubectl exec -it appserver-tomcat -c app-container /bin/bash
   40  kubectl get pods -l appser=pod
   41  kubectl delete -f pod.yml
   42  kubectl get pods -l appser=pod
   43  kubectl delete pods appserver-tomcat
   44  kubectl apply -f pod.yml
   45  kubectl delete pods -l appser=pod
   46  kubectl get pods