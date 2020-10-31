## Virtual Private Cloud(VPC) 
   1. network as a service in aws 
   2. vpc components
      1. vpc 
         1. tag name: mynetwork (optional)
         2. cidr: 192.168.0.0/16  (required) 
      ![create vpc](images/vpc1.png)
      ![create vpc](images/vpc2.png)
      ![create vpc](images/vpc3.png)
      ![create vpc](images/vpc4.png)
      ![create vpc](images/vpc5.png)
      ![create vpc](images/vpc6.png)
      1. Internet gateway: its provide internet to vpc 
           1. create IGW 
         ![create IGW](images/vpc7.png)
         ![create IGW](images/vpc8.png)
         ![create IGW](images/vpc9.png)
           2. attach to VPC 
          ![attach to vpc](images/vpc10.png)
          ![attach to vpc](images/vpc11.png)

      2. Routetable: its like wifi router. set of rules 
            1. Public RT: the RT which is routed to IGW 
               1. create RT 
              ![create RT](images/vpc13.png)
              ![create RT](images/vpc12.png)
               1. routed to IGW 
               ![routed to IGW](images/Public-ass-rt.png)
               ![routed to IGW](images/route.png)

            2. Private RT: the RT which is not routed to IGW 
               1. create private RT 
                 ![create RT](images/vpc13.png)
                 ![create RT](images/vpc14.png)
               2. No need IGW
      3. subnets: its piece of network in vpc 
           1. Public subnet 
              1. create subnet 
              ![create subnet](images/vpc15.png)
              ![create subnet](images/vpc16.png)
              1. associate to Public RT 
              ![associate to PublicRT](images/pUbluc-sub-RT.png)
              ![associate to PublicRT](images/Publi-sub-Rt-1.png)

           2. Private subnet
              1. create subnet  
              ![create subnet](images/private-subnet-1.png)
              ![create subnet](images/private-subnet-2.png)
              1. associate to Private RT
              ![asscoiate](images/Private-sub-Rt.png)
              ![asscoiate](images/Pri-sub-rt-1.png)
      4. security groups: define firewal (allow or deny)
         1. create security group 
          ![sg](images/sg1.png)
          ![sg](images/sg2.png)
          ![sg](images/sg3.png)
          ![sg](images/sg4.png)
      5. Ec2(elastic compute cloud) machine 
         1. launch ec2 machine in public subnet 
         2. launch ec2 machine in private subnet 
      6. test 
          1. login into public ec2 machine 
           ![steps](images/ec21.png)
           ![steps](images/ec22.png)
           ![steps](images/ec23.png)
           ![steps](images/ec24.png)
           ![steps](images/ec25.png)
           ![steps](images/ec26.png)
           ![steps](images/ec27.png)
           ![steps](images/ec28.png)
           ![steps](images/ec29.png)
          2. login into private ec2 machine