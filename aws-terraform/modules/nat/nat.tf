#----------ELASTIC IP FOR NAT -------------------------------------------

resource "aws_eip" "elastic_ip" {
  domain = "vpc"
  # depends_on = [aws_internet_gateway.internet_gateway.id]
}

# #---------------nat gateway ---------------------------------

resource "aws_nat_gateway" "nat" {
  allocation_id = var.elastic_ip
  subnet_id     = var.public_subnet_id
  #depends_on    = [aws_internet_gateway.gw]

  tags = {
    Name = var.nat_name
  }
}