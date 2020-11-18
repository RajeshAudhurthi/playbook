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
        "sudo apt update",
        "sudo apt install software-properties-common",
        "sudo apt-add-repository --yes --update ppa:ansible/ansible",
        "sudo apt install ansible -y",
        "git clone https://github.com/ABBANAPURI0445/devops-aws.git",
        "sudo ansible-playbook devops-aws/DevOps/LAMP/LAMP.yml"
    ]
  
  }
  tags = {
    Name = "HelloWorld"
  }
}