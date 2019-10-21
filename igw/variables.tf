variable "vpc_id" {
  description = "ID of VPC where Internet gateway to be deployed"
  default     = ""
}

variable "igw_name" {
  description = "Name of the internet gateway"
  default     = ""
}

variable "igw_enabled" {
  description = "flag to enable/disable internet gateway"
  default     = true
}
