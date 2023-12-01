variable "ami" {
  description = "Amazon Linux 2023 AMI"
  default     = "ami-0669b163befffbdfc"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "name_tag" {
  type        = string
  description = "Name of the EC2 instance"
  default     = "EC2 Instance"
}

variable "allocated_storage" {
  description = "allocated storage in GBs"
  default     = 20
}

variable "storage_type" {
  description = "Type of storage for DB"
  default     = "gp2"
}

variable "engine" {
  description = "Type of database required"
  default     = "mysql"
}
variable "engine_version" {
  description = "RDS engine version to use"
  default     = "5.7"
}
variable "instance_class" {
  description = "Instance class value"
  default     = "db.t2.micro"
}
variable "db_name" {
  description = "Name of database"
  default     = "mysqldatabase"
}
variable "db_user" {
  type        = string
  description = "username for DB user."
  default     = "bXlzcWx1c2Vy"
}
variable "db_pwd" {
  description = "password for DB user"
  default     = "bXlzcWxwYXNzd29yZA=="
}
variable "multi_az" {
  type        = bool
  description = "Enable multi-az"
  default     = null
}
