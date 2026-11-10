output "vpc_id" {
  description = "Created VPC ID."
  value       = aws_vpc.main.id
}
output "instance_id" {
  description = "EC2 instance ID."
  value       = aws_instance.web.id
}
output "public_ip" {
  description = "Public IPv4 address of the demo web server."
  value       = aws_instance.web.public_ip
}
output "website_url" {
  description = "HTTP URL for the demo web server."
  value       = "http://${aws_instance.web.public_ip}"
}
