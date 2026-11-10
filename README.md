# Terraform AWS Infrastructure

A learning project that provisions a small AWS VPC and EC2 instance using Terraform.

## Resources
- VPC and public subnet
- Internet Gateway and route table
- Security group allowing SSH only from a supplied CIDR
- EC2 instance using the latest Amazon Linux 2023 AMI via SSM

## Plan before apply
Requirements: Terraform >= 1.6, AWS CLI configured, and permissions to create resources.

```bash
cp terraform.tfvars.example terraform.tfvars
# Set allowed_ssh_cidr to YOUR_PUBLIC_IP/32 before applying.
terraform init
terraform fmt -check
terraform validate
terraform plan
```

## Cost and safety
**terraform apply creates billable AWS resources.** Review the plan and AWS pricing first. CI does not auto-apply. Destroy the demo when finished:

```bash
terraform destroy
```

Do not open SSH to 0.0.0.0/0. The EC2 instance and network resources may incur charges. This is a learning configuration, not a production-ready landing zone.
