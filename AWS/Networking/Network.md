## Network: 
   1. collection of nodes speak with each other
## Ip Address: 
   1. unique identify of node/host on network 
   2. cobination of network id and host id
   3. open powershell ```ipconfig```
      ```
      IPv4 Address. . . . . . . . . . . : 192.168.43.234
      Subnet Mask . . . . . . . . . . . : 255.255.255.0
      Default Gateway . . . . . . . . . : fe80::6088:b5ff:fe2e:3bde%13
                                    192.168.43.1
      ```
## subnetMask   
   1.  Helps in finding network id and host id
   2.  Also helps in determining size of the network
   3. Default Gateway: ipaddress of your router
   4. cidr  calculations
      ```  
        10.5.25.12
        00000000 = 0
        11111111 = 255 


        192.168.43.234
        255.255.255.0  
        11111111.11111111.1111111.00000000 
        networkid = 192.168.43
        hostid = 234 
        network size = 2^n-2 
        n = number of 0's 
        2^8-2 = 254
        network size 254 

        192.168.25.78 
        255.255.0.0 
        11111111.11111111.00000000.0000000
        network id = 192.168
        hostid = 25.78 
        size of network = 2^n-2 = 2^16-2 =650000 

        192.168.25.45 
        255.255.255.0
        11111111.11111111.11111111.00000000
        network id = 192.168.25
        hostid = 45
        size of network = 2^8-2 = 254  

        192.168.1.5
        255.255.255.0
        network id = 192.168.1
        hostid =  5
        network size = 2^8-2 = 254 
        class full: 
        255.255.255.0  = 254 
        255.255.0.0    = 11111111.11111111.00000000.00000000 
                        2^n-2 
                        n = number of 0's 
                        n = 16 
                        2^16-2-3 = 65531 
                        65321-500 = 65000

        255.0.0.0     = 11111111.00000000.00000000.00000000
                    = 2^n-5 = 2^24-5 
                    = 16777211  
      ```
## CIDR: 
   1. class less inter-domain range 
### create a network which is connected to 240 devices 
      
        192.168.5.15
        255.255.255.0
        111111111.111111111.11111111.00000000
        2^8-5 = 251
      
### create a network which is connected to 500 devices 
    
        198.168.5.15 
        255.255.255.0
        111111111.111111111.11111110.00000000
        subnet mask 255.255.254.0   
        network id = 192.168.5
        host = 15                              
            2^9-5 = 512-5=507 `
    
### create network which is connect 1000 devices 
     
       192.168.10.25 
       255.255.255.0
       11111111.11111111.11111100.00000000 
       255.255.252.0 
       network id = 192.168.10
       host id = 25
         2^10-5 = 1024-5 = 1019 
         cidr noataion = 192.168.10.25/22 
           IP/netmusk = number of 1's 
     

### create network which is connected to 7000 device 
     
      198.168.13.24 
      255.255.255.0
      11111111.11111111.11100000.00000000
      255.255.224.0
      network size = 2^n-5 = 2^13-5 = 8187 
      cidr notation = 198.168.13.0/19 
     
### create network for 75000 device 
     
      172.16.5.2 
      255.255.255.0
      11111111.11111110.00000000.000000000  2^17-5 = 131000
      255.254.0.0
      network id = 172.16
      hostid = 5.2
      cidr notaion = 172.16.0.0/15
     
     
### create network for 12k device 
   
      192.168.3.8 
      255.255.255.0
      11111111.11111111.11000000.00000000 
     SM = 255.255.192.0
      255.255.132.0
      network id = 192.168.3
      host id = 8 
      network size = 16284-5 = 16279 
      cidr notaion = 192.168.0.0/18 
     
### prerequisite
  1. install chocoletey 
      1. open powershell as adminstrator
      2. paste below script 
         ```    
            Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
         ``` 
       3. and press enter
   2. install git and vscode 
      ```
      choco install git -y
      choco install vscode -y
      ```
   3. create aws free tier account 
    [click here for aws free tier account](https://portal.aws.amazon.com/billing/signup#/start)