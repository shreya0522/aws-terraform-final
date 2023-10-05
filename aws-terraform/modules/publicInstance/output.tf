output "ami_id" {
  value = data.aws_ami.latest_ubuntu.id
}

output "public_server_ip" {
  value = aws_instance.bastion.*.public_ip
}