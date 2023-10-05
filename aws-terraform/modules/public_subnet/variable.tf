variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "public_subnet_cidr" {
  type = list(string)
  # default = ["10.0.0.0/18", "10.0.64.0/18"]
}

variable "public_az" {
  type = list(string)
  #default = ["us-east-1a", "us-east-1c"]
}

variable "public_subnet_name" {
  type = list(string)
  #default = ["ninja-pub-sub-01/02", "ninja-pub-sub-02/02"]
}

variable "map_public_ip_on_launch" {
  type = bool
  #description = "Whether to map public IP on launch"
}