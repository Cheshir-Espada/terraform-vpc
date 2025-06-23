variable "key_name" {
  description = "SSH key name to use for Bastion Host"
  type        = string
}
variable "region" {
  description = "AWS region to deploy resources in"
  type        = string
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}




