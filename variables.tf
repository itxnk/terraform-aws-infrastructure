variable "aws_region" {
  description = "AWS region for the demo."
  type        = string
  default     = "ap-south-1"
}
variable "project_name" {
  description = "Prefix used to name resources."
  type        = string
  default     = "nk-devops-lab"
}
variable "instance_type" {
  description = "EC2 instance type. Creates billable resources."
  type        = string
  default     = "t3.micro"
}
variable "allowed_ssh_cidr" {
  description = "Your public IPv4 address in CIDR notation, for example 203.0.113.10/32."
  type        = string
  validation {
    condition     = can(cidrhost(var.allowed_ssh_cidr, 0)) && var.allowed_ssh_cidr != "0.0.0.0/0"
    error_message = "Provide a valid, restricted CIDR; 0.0.0.0/0 is not allowed."
  }
}
variable "key_name" {
  description = "Existing EC2 key pair name for SSH access."
  type        = string
  default     = null
}
