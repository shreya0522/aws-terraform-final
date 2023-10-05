variable "vpc_id" {
  type = string
}

variable "private_subnet_cidr" {
  type = list(string)
  # default = ["10.0.128.0/18", "10.0.192.0/18"]
}

variable "private_az" {
  type = list(string)
  # default = ["us-east-1a", "us-east-1c"]
}

variable "private_subnet_name" {
  type = list(string)
  # default = ["ninja-priv-sub-01/02", "ninja-priv-sub-02/02"]
}
