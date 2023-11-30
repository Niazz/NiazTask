locals {
  ami               = "ami-065deacbcaac64cf2"
  instance_type     = "t2.micro"
  name_tag          = "My EC2 Instance2"
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t2.micro"
  db_name           = "mydatabase"
  username          = "myusername"
  password          = "mypassword"
}

variable "ami" {
  description = "Ubuntu AMI ID in N. Virginia Region"
  default     = "ami-065deacbcaac64cf2"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "name_tag" {
  type        = string
  description = "Name of the EC2 instance"
  default     = "My EC2 Instance"
}

variable "allocated_storage" {

}