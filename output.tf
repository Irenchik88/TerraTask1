output "load_balancer_dns_name" {
  value       = "lb-task1-545706388.us-east-1.elb.amazonaws.com"
  description = "LB DNS name"
}
output "instance1_public_ip" {
  value       = aws_instance.instance1.public_ip
  description = "Public IP of EC2 Instance"
}
output "instance2_public_ip" {
  value       = aws_instance.instance2.public_ip
  description = "Public IP of EC2 Instance"
}
output "instance3_public_ip" {
  value       = aws_instance.instance3.public_ip
  description = "Public IP of EC2 Instance"
}
