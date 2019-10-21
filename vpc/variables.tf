variable "create_vpc" {
  description = "whether to create VPC or not"
  default     = true
}

variable "vpc_name" {
  description = "Name of VPC to create"
  default     = "default"
}

variable "vpc_cidr_block" {
  description = "CIDR to be assigned to VPC"
  default     = ""
}

variable "enable_dns_support" {
  description = "Flag to enable DNS support for VPC"
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Flag to enable DNS hostname support for VPC"
  default     = true
}

variable "account" {
  description = "Account from which VPC flowlog role is created"
  default     = ""
}

variable "vpc_flowlog_role" {
  description = "vpc flowlog role to be used"
  default     = ""
}

variable "vpc_flow_loggroup_name" {
  description = "loggroup name for vpc flowlog"
  default     = "vpc-flow-logs"
}

