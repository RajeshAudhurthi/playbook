terraform {
  backend "s3" {
    bucket = "backend-terraform-19-11-2020"
    key    = "terraform-state-file"
    region = "us-east-2"
    dynamodb_table = "terraform-backend"
  }
}