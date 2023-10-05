#---- vpc------------------------------------------------------------------
vpc_cidr = "10.0.0.0/16"
vpc_name = "ninja-vpc-01"

#------public subnet------------------------------------------------------

# List of public subnet CIDR blocks
public_subnet_cidr = ["10.0.0.0/18", "10.0.64.0/18"]

# List of availability zones for public subnets
public_az = ["ap-south-1a", "ap-south-1b"]

# List of public subnet names
public_subnet_name = ["ninja-pub-sub-01/02", "ninja-pub-sub-02/02"]

# Whether to map public IP on launch (true or false)
map_public_ip_on_launch = false

#--------------------private subnet --------------------------------------------
private_subnet_cidr = ["10.0.128.0/18", "10.0.192.0/18"]

private_az = ["ap-south-1a", "ap-south-1b"]

private_subnet_name = ["ninja-priv-sub-01/02", "ninja-priv-sub-02/02"]

#----------------------gw----------------------------------------------

gateway_name = "internet_gateway"

nat_name = "nat_gateway"

cidr_block_public_RT    = "0.0.0.0/0"
public_route_table_name = "public_RT"

cidr_block_private_RT    = "0.0.0.0/0"
private_route_table_name = "private_RT"

#-----------bastion & private servers---------------

ami_id              = "ami-053b0d53c279acc90"
instance_type       = "t2.micro"
server_name         = ["bastion", "proxy-server"]
private_server_name = ["nginx-1", "nginx-2"]

#-----------------------------------------

launch_template_name = "ninja_template"
ebs_volume_size      = "8"
image_id             = "ami-0f7d08a642565cfd6"
name_prefix          = "ninja-asg"
max_size             = 2
min_size             = 2
desired_capacity     = 2
