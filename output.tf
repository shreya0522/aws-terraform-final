output "private_ips" {
  value = module.privateInstance.private_server_ip
}

output "public_ips" {
  value = module.public_server.*.public_server_ip
}

output "server_name" {
  value = var.server_name
}

output "bastion_sg" {
  value = module.securityGroup.bastion-sg
}

output "nginx_sg" {
  value = module.securityGroup.nginx_sg
}

output "proxy_server_sg" {
  value = module.securityGroup.proxy_server_sg
}