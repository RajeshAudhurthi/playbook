[ubuntu]
172.31.41.132
172.31.44.231
172.31.42.178

[centos]
172.31.93.180


[ubuntu:vars]
package_name: git

[centos:vars]
package_name_centos: tree

```
- hosts: all 
  become: yes
  tasks: 
  - name: install package on ubuntu
    apt: 
     name: "{{ package_name }}"
     state: present 
  when: ansible_os_family == "Debian" 
  - name: install package on centos
    yum: 
      name: "{{ package_name_centos }}"
      state: present 
```

## webserevr 3 nodes are ubunu one node is centos 
   in ubuntu nodes install apache2
   in centos node install httpd 
1. [webserver]
   172.31.41.132
   172.31.44.231
   172.31.42.178
   172.31.93.180  package_web: httpd 

2. [webserver:vars] 
    package_web: apache2 
```
- hosts: all 
  become: yes 
  tasks: 
  - name: install webserver in ubuntu
    apt: 
      name: "{{ package_web }}"
      state: present 
    when: ansible_os_family == "Debian"
  - name: install webserver in centos
    yum: 
      name: "{{ package_web }}"
      state: present 
    when: ansible_os_family == "RedHat"


ansible-playbook -i myinv -e   package_web=nginx webserver.yml

Note: command line is highest 


  