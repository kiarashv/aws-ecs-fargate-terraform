# Checks the terraform version for compatibility purpose
terraform {
  required_version = ">= 0.12"
}
# Specify the provider and access details
provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = var.aws_profile
  region                  = var.aws_region
}

output "alb_url" {
  value = aws_alb.main.dns_name
}