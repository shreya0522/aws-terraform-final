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
}

variable "public_subnet_name" {
  type = list(string)
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
variable "instance_type" {
  type = string
}

variable "server_name" {
  type = list(string)
}

variable "private_server_name" {
  type = list(string)
}