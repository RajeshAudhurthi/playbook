resource "aws_vpc" "vpctf" {
  cidr_block = var.vpccidr
  enable_dns_hostnames = true 
  tags = {
    Name = "VPCTF"
  }
}
resource "aws_internet_gateway" "igwtf" {
  vpc_id = aws_vpc.vpctf.id 
  tags = {
    Name = "IGWTF"
  }
}
resource "aws_route_table" "publicRT" {
  vpc_id = aws_vpc.vpctf.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igwtf.id
  }

  tags = {
    Name = "Public-Route-Table"
  }
}
resource "aws_route_table" "privateRT" {
  vpc_id = aws_vpc.vpctf.id
  tags = {
    Name = "Private-Route-Table"
  }
}

resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.vpctf.id
  cidr_block = var.publicsubnetcidr
  availability_zone = var.publicaz
  tags = {
    Name = "Public-Subnet"
  }
}
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.publicsubnet.id
  route_table_id = aws_route_table.publicRT.id
}
resource "aws_subnet" "privatesubnet" {
  vpc_id     = aws_vpc.vpctf.id
  cidr_block = var.privatesubnetcidr
  availability_zone = var.privateaz
  tags = {
    Name = "Private-Subnet"
  }
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.privatesubnet.id
  route_table_id = aws_route_table.privateRT.id
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.vpctf.id

  ingress {
    description = "allow all"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all_sg"
  }
}