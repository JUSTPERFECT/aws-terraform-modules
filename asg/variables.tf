variable "lc_name" {
  description = "name of launch configuration to start with"
  default = "test"
}

variable "cluster_properties" {
  description = "key/value properties of created cluster"
  type = "map"
  default = {}
}

variable "vpc_security_group_ids" {
  description = "security groups to be attached to launch configuration"
  type = "list"
  default = []
}

variable "image_id" {
  description = "base AMI needed for autoscaling group instances"
  default = ""
}

variable "associate_public_ip_address" {
  description = "creating a public ip on launch of instance"
  default = ""
}


variable "asg_name" {
  description = "name of autoscaling group"
}

variable "subnet_ids" {
  description = "A list of subnet IDs to launch resources in"
  type = "list"
}


variable "health_check_grace_period" {
  description = "Time (in seconds) after instance comes into service before checking health"
  default     = 300
}

variable "health_check_type" {
  description = "Controls how health checking is done. Values are - EC2 and ELB"
}
variable "min_elb_capacity" {
  description = "Setting this causes Terraform to wait for this number of instances to show up healthy in the ELB only on creation. Updates will not wait on ELB instance number changes"
  default     = 1
}

variable "wait_for_elb_capacity" {
  description = "Setting this will cause Terraform to wait for exactly this number of healthy instances in all attached load balancers on both create and update operations. Takes precedence over min_elb_capacity behavior."
  default     = false
}
variable "default_cooldown" {
  description = "The amount of time, in seconds, after a scaling activity completes before another scaling activity can start"
  default     = 300
}

variable "force_delete" {
  description = "Allows deleting the autoscaling group without waiting for all instances in the pool to terminate. You can force an autoscaling group to delete even if it's in the process of scaling a resource. Normally, Terraform drains all the instances before deleting the group. This bypasses that behavior and potentially leaves resources dangling"
  default     = false
}
