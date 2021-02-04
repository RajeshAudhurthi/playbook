## cd
   1. write a playbook  
      ```
      - hosts: all
        become: yes
        tasks: 
        - name: install tomcat
          apt: 
            name: tomcat8
            update_cache: yes 
            state: present
        - name: deploy war file 
          get_url:
            url: http://34.221.225.179:8082/artifactory/gol/gameoflife.war
            dest: /var/lib/tomcat8/webapps
            username: admin
            password: devops123
      ```
 * this playbook push to github along with myinv file