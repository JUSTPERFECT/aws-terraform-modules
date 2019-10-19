variable "create_elb" {
  description = "if true, ELB will be created"
  default     = true
}

variable "elb_name" {
  description = "classic load balancer name to be created"
  default     = ""
}

variable "subnet_ids" {
  description = "subnets associated with elb"
  type        = "list"
  default     = []
}

variable "elb_internal" {
  description = "Flag to define whether ELB is internal or external"
  default     = true
}

variable "security_groups" {
  description = "security groups to be attached with LB"
  type        = "list"
  default     = []
}

variable "cross_zone_load_balancing" {
  description = "Flag to enable cross zone load balancing"
  default     = true
}

variable "idle_timeout" {
  description = "The time given for connection to be idle"
  default     = 300
}

variable "connection_draining" {
  description = "Flag to enable connection draining"
  default     = false
}

variable "connection_draining_timeout" {
  description = "The time given for connections to drain"
  default     = 300
}

variable "listener" {
  description = "list of elb listeners"
  type        = "list"
  default     = []
}

variable "access_logs" {
  description = "list of elb access logs"
  type        = "list"
  default     = []
}

variable "health_check" {
  description = "list of elb health checks"
  type        = "list"
  default     = []
}
