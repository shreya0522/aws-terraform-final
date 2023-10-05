data "aws_ami" "latest_ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}

resource "aws_instance" "bastion" {
  # count           = length(var.server_name)
  ami             = data.aws_ami.latest_ubuntu.id
  instance_type   = var.instance_type
  subnet_id       = var.public_subnet_id #[count.index]
  security_groups = var.security_group
  key_name        = var.key_name
  tags = {
    Name = var.server_name #[count.index]
  }
}