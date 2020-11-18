## CICD 
   1. Version Control system (GIT)
   2. jenkins 
       1. install jenkins (cloud bees)
       2. cretae job 
           1.Freestyle
           2. Pipeline
               1. scripted pipeline
               2. declarative (groovy)
       3. pipeline stages 
       4. master slave
       5. integration
       6. maven
       7. parameterzied build 

## Terraform 
   1. Infra as a code
   2. cloudformation in only of AWS 
   3. its support both (public cloud & private)
   4. terraform from Hasicorp 
   5. terraform developed in golang 
   6. terraform file we need write in Terraform DSL 
   7. latest version of terraform its support Json 
## install terraform 
   1. windows
      ```
      choco install terraform
      ```
## Building Block of Terraform 
   1. provider 
   2. varibale
   3. resource
   4. provisioner
   5. outputs 
## structure
   1. Provider 
      ```
      provider "aws" {
        region     = "us-west-2"
        access_key = "my-access-key"
        secret_key = "my-secret-key"
      }
      ```
      if you configure aws cli 
      ```
      provider "aws" {}
      ``` 
   2. Variable: avoid the hard coding 
      ```
      variable "image_id" {
        type = string
      }
      ```
   3. resource 
      1. create vpc 
      ```
      resource "aws_vpc" "main" {
        cidr_block = "10.0.0.0/16"
      }
      ``` 
   4. provisioning 
   5. output 
## create IAM user 
   [click here](https://github.com/ABBANAPURI0445/devops-aws/blob/master/AWS/AWS%20CLI/aws-clI.md)
## create vpc and deploy ec2 machine on public subnet 
## create infra using Tf file 
   1. terraform init: download provider plugins (.terraform)
   2. terraform validate: check syntax errors
   3. terraform plan: just show the plan
   4. terraform apply: create infra
   5. terraform destroy: remove infra
   