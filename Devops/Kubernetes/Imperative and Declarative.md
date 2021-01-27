## Service: 
   1. imparative: 
      ```
      kubectl expose deploy nginx --port 80 --type ClusterIP 
      ```  
   2. declarative: 
      ```
      apiVersion: v1
      kind: Service
      metadata: 
        name: nginx 
      spec: 
        selector: 
          web: nginx 
        ports: 
         - port: 80 
        type: ClusterIP
      ```