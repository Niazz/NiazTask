resource "aws_instance" "my_vm" {
  ami           = var.ami //Ubuntu AMI
  instance_type = var.instance_type

  tags = {
    Name = var.name_tag,
  }
}

resource "aws_db_instance" "my_rds_instance" {
  allocated_storage = 20
  storage_type      = local.storage_type
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t2.micro"
  db_name           = "mydatabase"
  username          = "myusername"
  password          = "mypassword"
}