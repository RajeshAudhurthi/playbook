resource "aws_vpc" "vpcmodule" {
  cidr_block = var.cidr
  enable_dns_hostnames = true 
  tags = {
    Name = "vpc-module"
  }
}
resource "aws_internet_gateway" "igwtf" {
  vpc_id = aws_vpc.vpcmodule.id 
  tags = {
    Name = "IGWTF"
  }
}