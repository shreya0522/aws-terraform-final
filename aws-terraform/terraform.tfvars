#---- vpc------------------------------------------------------------------
vpc_cidr = "10.0.0.0/16"
vpc_name = "nginx-vpc"

#------public subnet------------------------------------------------------

# List of public subnet CIDR blocks
public_subnet_cidr = ["10.0.0.0/18", "10.0.64.0/18"]

# List of availability zones for public subnets
public_az = ["ap-south-1a", "ap-south-1b"]

# List of public subnet names
public_subnet_name = ["nginx-pub-sub-01/02", "nginx-pub-sub-02/02"]

# Whether to map public IP on launch (true or false)
map_public_ip_on_launch = false

#--------------------private subnet --------------------------------------------
private_subnet_cidr = ["10.0.128.0/18", "10.0.192.0/18"]

private_az = ["ap-south-1a", "ap-south-1b"]

private_subnet_name = ["nginx-priv-sub-01/02", "nginx-priv-sub-02/02"]

#----------------------gw----------------------------------------------

gateway_name = "nginx-igw"

nat_name = "nginx-nat"

cidr_block_public_RT    = "0.0.0.0/0"
public_route_table_name = "nginx-public_RT"

cidr_block_private_RT    = "0.0.0.0/0"
private_route_table_name = "nginx-private_RT"

#-----------bastion & private servers---------------

instance_type       = "t2.micro"
server_name         = ["bastion", "proxy-server"]
private_server_name = ["nginx-1", "nginx-2"]
