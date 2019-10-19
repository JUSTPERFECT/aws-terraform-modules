variable "create_rds" {
  description = "flag which decides creation of rds"
  default     = true
}

variable "identifier" {
  description = "name of the rds instance"
  description = "wiki"
}

variable "db_storage" {
  description = "storage volume assigned to database"
  default     = "20"
}

variable "storage_type" {
  description = "storage type to use for database"
  default     = "gp2"
}

variable "engine" {
  description = "engine type to use for database"
  default     = "mysql"
}

variable "engine_version" {
  description = "database engine version"
  default     = "5.7"
}

variable "instance_class" {
  description = "database version to be used"
  default     = "db.t2.micro"
}

variable "name" {
  description = "name of the database"
  default     = "mediawiki"
}

variable "username" {
  description = "database admin username to use"
  default     = "wiki"
}

variable "password" {
  description = "database password to use"
  default     = "changeme"
}

variable "parameter_group_name" {
  description = "parameter group use with DB which provides fine tuning of database"
  default     = "default.mysql5.7"
}

variable "allow_major_version_upgrade" {
  description = "allow AWS to upgrade DB in asyc way"
  default     = false
}

variable "apply_immediately" {
  description = "apply any changes to DB immediately or not"
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "Flag to automatically update minor versions of DB"
  default     = false
}

variable "multi_az" {
  default = false
}

variable "db_subnet_group_name" {
  default = "default"
}

variable "backup_retention_period" {
  default = 1
}

variable "maintenance_window" {
  default = "Mon:00:00-Mon:03:00"
}

variable "backup_window" {
  default = "03:00-06:00"
}

variable "security_group" {
  default = ""
}
