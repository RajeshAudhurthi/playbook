## create user using playbook
   1. Create user manually
      '''
      adduser ansible
      '''
   2. convert into ansible
      '''
      user:
        name: johnd
        state: present
      '''
   3. create a directory in command
      '''
      mkdir rajesh
      '''
   4. convert in to ansible
      '''
      file:
         path: /home/ansible/rajesh
         state: directory
      '''
      '''
      file:
         path: /home/ansible/rajesh.txt
         state: touch
      '''
   

   

