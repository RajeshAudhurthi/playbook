# Relational Database Service (RDS) 77
   1. RDS
   2. RDS VS Deploy DB on EC2 machine 
   3. Backup's and Snapshot
   4. Readreplica
   5. Multi-AZ
   6. Encryption and Security 
   7. RDS Setup 
   8. SQL Electron 
   
   * Mysql --> Mysql workbench 
   * MSSql --> MSSQL manager studio 
   * postgress --> pgadmin 

## 1 RDS 
   1. its managed DB service, PAAS 
   2. SQL DB 
   3. its allows to create a database in cloud that are  managed by aws
   4. you will get lot of benifits from AWS 
   5. supported DB Engines 
       1. postgress
       2. mysql
       3. maria
       4. Oracle
       5. MS Sql
       6. Aurora (AWS Propreitery DB) 
## 2 RDS VS Deploy Database on EC2 Machine 
   1. Deploy database on ec2 machine 
       1. Launch EC2 machine 
       2. login into ec2 machine and install mysql engine 
   2. RDS benifits 
      1. Automated backups 
      2. Automated Provisoning , OS and DB Patchings
      3. Monitoring 
      4. Readreplica for improve read performance
      5. Multi-AZ (DR)
      6. Scalling storage 
   3. you can't SSH into underlaying EC2 machine  
## Backup's 
   1. Backup's are automatically enabled in RDS
   2. Automated backups 
      1. Daily Automated backups of DB(choose the maintaince windows)
      2. transactional log backup's are every 5 mins once (point in time)
      3. 7 days rentiontion policy (up 35 days) 
## Snapshot
   1. Manually triggered by user
   2. retention backup for as long as you want  

## Read Replica 
## Multi-Az 
   
## Database Connectvity
   * Mysql --> Mysql workbench 
   * MSSql --> MSSQL manager studio 
   * postgress --> pgadmin 
   * all in one --> SQL Electron
  
    
## Security 
* RDS --> read replica encrypted 
* RDS not encrypted --> read replica not encrypted 

## Encryption
  1. KMS in aws, at the time of create DB 
  2. TDE 
  3. SSL (in fligt encryption) https  
## Security: 
    1. Network: db we deploy into private subnet 
    2. Sg and NACL -- security layers in aws  
   