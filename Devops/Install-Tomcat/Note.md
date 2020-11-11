## concepts
   1. idempotent
   2. file (copy file from ACS to all nodes)
   3. Template (copy file from ACS to all nodes) 

## Idempotent
   1. execute one time or 100000 times it gives same results
   2. create user  ```adduser test``` 
   3. create directory ```mkdir test``` 
   ```
    - hosts: all
      become: yes
      tasks: 
      - name: create user 
        user:
           name: test
           state: present
        become: true
      - name: create directory
        file:
            path: /home/ansible/test
            state: directory
    ```

2. File 
  1. file contains static information , it will never change  
  2. create file 
     ```
     vi file
     ```
     ---
     hi hello
     "{{ package_name }}"
     "{{ ansible_os_family }}"
     ---
  3. copy file from ACS to all nodes 
     ```
     copy: 
       src: /home/ansible/test
       dest: /home/ansible/static
     ```
3. Template: it contains dynamic information itr vary with vaiables 
   1. create template should be extenssion with .j2 
      ```
      touch test.j2
      ``` 
  2. open the file and insert same content 
     ```
     vi test.j2
     ---
      hi hello
     "{{ package_name }}"
     "{{ ansible_os_family }}"
     ---
     ``` 
  3. copy template from ACS to all nodes 
     ```
     template: 
       src: /home/ansible/test.j2
       dest: /home/ansible/dynamic
    ```

