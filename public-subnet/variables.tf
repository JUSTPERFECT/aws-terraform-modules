variable "vpc_id" {
  description = "ID of VPC where public subnet to be deployed"
}

variable "public_subnets_count" {
  description = "number of private subnets to be created"
  default     = 1
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR block for the public subnet"
  type        = "list"
  default     = []
}

variable "availability_zones" {
  description = "azs to deploy subnet"
  type        = "list"
  default     = []
}

variable "public_subnet_name" {
  description = "Name of the public Subnet"
  default     = ""
}

