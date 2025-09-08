output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.app_alb.dns_name
}

output "rds_endpoint" {
  description = "RDS MySQL connection endpoint"
  value       = aws_db_instance.mysql.endpoint
}

output "asg_name" {
  description = "The name of the Auto Scaling Group"
  value       = aws_autoscaling_group.app_asg.name
}

