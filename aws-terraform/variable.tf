#--------vpc--------------------
variable "vpc_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

#------------public subnet ---------

variable "public_subnet_cidr" {
  type = list(string)

}

variable "public_az" {
  type = list(string)
  # default = ["us-east-1a", "us-east-1c"]
}

variable "public_subnet_name" {
  type = list(string)
  # default = ["ninja-pub-sub-01/02", "ninja-pub-sub-02/02"]
}

# -----------------------------------------
variable "map_public_ip_on_launch" {
  type = bool
}

#-------------private subnet --------------------
variable "private_subnet_cidr" {
  type = list(string)
}

variable "private_az" {
  type = list(string)
}

variable "private_subnet_name" {
  type = list(string)
}

# ---------- internet gateway -------------------------------------
variable "gateway_name" {
  type = string
}

#---------nat-----------------------
variable "nat_name" {
  type = string
}

variable "cidr_block_public_RT" {
  type = string
}

variable "public_route_table_name" {
  type = string
}

variable "cidr_block_private_RT" {
  type = string
}

variable "private_route_table_name" {
  type = string
}

#-----------bastion & private servers----------------
variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "server_name" {
  type = list(string)
}

variable "private_server_name" {
  type = list(string)
}


#-----------------------------------------

variable "launch_template_name" {
  type = string
}

variable "ebs_volume_size" {
  type = string
}



variable "image_id" {
  type = string
}

variable "name_prefix" {
  type = string
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "desired_capacity" {
  type = number
}