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