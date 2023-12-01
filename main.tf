#EC2 instance creation
resource "aws_instance" "myEC2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.name_tag,
  }

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
}

#RDS DB creation
resource "aws_db_instance" "my_rds_instance" {
  allocated_storage = var.allocated_storage
  storage_type      = var.storage_type
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.instance_class
  db_name           = var.db_name
  username          = var.db_user
  password          = var.db_pwd
  multi_az          = var.multi_az

  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.rds_sg.id]
}

# RDS security group
resource "aws_security_group" "rds_sg" {
  name        = "rds_sg"
  description = "Allow traffic to RDS instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 security group
resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "Allow traffic to EC2 instance"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
