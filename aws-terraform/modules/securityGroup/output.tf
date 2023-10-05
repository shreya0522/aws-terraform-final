
output "bastion-sg" {
  value = aws_security_group.bastion_sg.id
}

output "proxy_server_sg" {
  value = aws_security_group.proxy_server_sg.id
}

output "nginx_sg" {
  value = aws_security_group.nginx_sg.id
}