variable "public_subnet" {}
variable "key_name" {}
variable "sg_id" {}

variable "vpc_id" {
  description = "VPC ID for Bastion (optional for now)"
  type        = string
}

variable "region" {
  description = "AWS region (optional for now)"
  type        = string
}


