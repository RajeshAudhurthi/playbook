## Terraform 
   1. building blocks
   2. terraform file
   3. backend 
       1. local backend(default) (terraform.tfstate)
       2. remote backend  
   4. S3 backend with dynamo DB 
      1. s3 bucket with versioning 
      2. dynamo DB Table 

# Terraform Backend
## S3 
[Documentation for S3 backend](https://www.terraform.io/docs/backends/types/s3.html)

> Stores the state as a given key in a given bucket on Amazon S3. This backend also supports state locking and consistency checking via Dynamo DB, which can be enabled by setting the dynamodb_table field to an existing DynamoDB table name. A single DynamoDB table can be used to lock multiple remote state files. Terraform generates key names that include the values of the bucket and key variables.

## DynamoDB State Locking
> `dynamodb_table`  (Optional) : Name of DynamoDB Table to use for state locking and consistency. The table must have a primary key named LockID with type of string. If not configured, state locking will be disabled.