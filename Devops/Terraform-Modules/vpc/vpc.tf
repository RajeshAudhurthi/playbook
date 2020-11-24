provider "aws" {
  region = "us-east-2"
}
module "New" {
    source = "../Modules/vpc-module"
    
}