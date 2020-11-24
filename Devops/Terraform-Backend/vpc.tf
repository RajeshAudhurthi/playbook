provider "aws" {
  region     = "us-east-2"
}
resource "aws_vpc" "vpctf" {
  cidr_block = "192.168.0.0/16"
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
  cidr_block = "192.168.0.0/24"
  availability_zone = "us-east-2a"
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
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-2b"
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
resource "aws_instance" "web" {
  ami = "ami-0dd9f0e7df0f0a138"
  instance_type = "t2.micro"
  key_name = "raj-aws-key"
  vpc_security_group_ids = aws_security_group.allow_all.*.id
  subnet_id = aws_subnet.publicsubnet.id
  associate_public_ip_address = true
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("raj-aws-key.pem")
    host = aws_instance.web.public_ip

  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install apache2 -y",
    ]
  
  }
  tags = {
    Name = "HelloWorld"
  }
}

output "VPCid" {  
  value = aws_vpc.vpctf.id
}
output "IGWid" {
  value = aws_internet_gateway.igwtf.id
}
output "pubRT" {
  value = aws_route_table.publicRT.id
}
output "priRT" {
  value = aws_route_table.privateRT.id
}
output "publicsubnet" {
  value =  aws_subnet.publicsubnet.id
}
output "privatesubnet" {
  value =  aws_subnet.privatesubnet.id
}
output "SecurityGroupID" {
  value =  aws_security_group.allow_all.id
}
output "publicIP" {
  value =  aws_instance.web.public_ip
}