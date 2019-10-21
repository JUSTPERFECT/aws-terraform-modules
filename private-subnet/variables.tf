variable "vpc_id" {
  description = "ID of VPC where public subnet to be deployed"
  default     = ""
}

variable "private_subnets_count" {
  description = "number of private subnets to be created"
  default     = 1
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR block for the public subnets"
  type        = "list"
  default     = []
}

variable "availability_zones" {
  description = "azs to deploy subnets"
  type        = "list"
  default     = []
}

variable "private_subnet_name" {
  description = "Name of the public Subnet"
  default     = ""
}
