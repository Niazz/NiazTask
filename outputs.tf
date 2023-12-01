output "ec2_public_ip" {
  value       = aws_instance.myEC2.public_ip
  description = "Public IP Address of EC2 instance"
}

output "ec2_instance_id" {
  value       = aws_instance.myEC2.id
  description = "EC2 Instance ID"
}

output "db_instance_id" {
  value       = aws_db_instance.my_rds_instance.id
  description = "RDS DB Instance ID"
}

output "db_instance_name" {
  value       = aws_db_instance.my_rds_instance.db_name
  description = "RDS DB name"
}

output "db_instance_engine" {
  value       = aws_db_instance.my_rds_instance.engine
  description = "RDS DB Engine"
}

output "db_instance_engine_version" {
  value       = aws_db_instance.my_rds_instance.engine_version
  description = "RDS DB Engine version"
}

output "db_instance_endpoint" {
  value       = aws_db_instance.my_rds_instance.endpoint
  description = "RDS DB Endpoint"
}

output "db_instance_status" {
  value       = aws_db_instance.my_rds_instance.status
  description = "RDS DB status"
}
