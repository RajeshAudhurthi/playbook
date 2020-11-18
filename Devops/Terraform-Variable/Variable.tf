variable "vpccidr" {
  type = string
  default = "192.168.0.0/16"
}
variable "publicsubnetcidr" {
  type = string
  default = "192.168.0.0/24"
}
variable "privatesubnetcidr" {
  type = string
  default = "192.168.1.0/24"
}
variable "publicaz" {
  type = string
  default = "us-east-2a"
}
variable "privateaz" {
  type = string
  default = "us-east-2b"
}
variable "amiid" {
  type = string
  default = "ami-0dd9f0e7df0f0a138"
}
variable "instancetype" {
  type = string
  default = "t2.micro"
}
variable "keyname" {
  type = string
  default = "raj-aws-key"
}
