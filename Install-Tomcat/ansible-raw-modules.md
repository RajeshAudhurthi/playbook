## ansible raw modules
   1. these are not idempotent 
   2. we need to make it as idempotent (tasks write in handlers notify when ever require) 
   3. list of non-idempotent ansible modules
      1. shell
      2. command
      3. raw 
       4. create user 
        ```
         - name: create user
           user: 
             name: tomcat
             state: present 
         - name: create user using command module
           command: sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
        ```