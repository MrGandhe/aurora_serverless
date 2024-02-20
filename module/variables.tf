variable "provision_vpc" {
  type        = bool
  description = "toggle for creating vpc"
}
variable "vpc_name" {
  description = "Name of vpc"
  default     = "dev-vpc"
}

variable "vpc_cidr" {
  description = "vpc cidr address"
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "vpc availablity zone"
  default     = [""]
}

variable "vpc_private_subnet_cidrs" {
  description = "private subnet cidr addresses"
  default     = [""]
}

variable "vpc_public_subnet_cidrs" {
  description = "public subnet cidr addresses"
  default     = [""]
}
variable "single_nat_gateway" {
  type        = bool
  description = "Should the VPC have single NAT Gateway"
}
variable "vpc_tags" {
  description = "tags to add in vpc resources"
  default     = {}
}
# variable "db_password" {

# }
variable "rds_subnet_group_name" {

}
variable "db_username" {

}
variable "instance_count" {

}
variable "instance_name" {

}
variable "secret_name" {

}
variable "rds_engine" {

}
variable "rds_engine_mode" {

}
variable "rds_instance_class" {

}
variable "rds_engine_version" {
  
}
