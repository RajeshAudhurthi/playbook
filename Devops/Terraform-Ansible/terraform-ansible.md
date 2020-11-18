## terraform provisioner 
   1. built in provisioners
       1. remote-exec
       2. chef
       3. puppet
       4. salt 
     Note: but ansible not built in provisioner 
     Q) how to do provisioner by using ansible
         1. take remote exec and install ansible 
         2. run playbook
#### destroy one resource 
     1. if you run terraform destroy -- destroy hole in infra 
     2. destroy one single resource 
        ```
        terraform --help
        taint the resource 
        terraform taint aws_instance.web
        terraform apply 