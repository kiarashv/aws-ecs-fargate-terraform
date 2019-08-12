# Specify the provider and access details
provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = var.aws_profile
  region                  = var.aws_region
}

module "network" {
  source = "./modules/network"
}

module "alb" {
  source = "./modules/alb"
}

module "auto_scaling" {
  source = "./modules/auto_scaling"
}

module "ecs" {
  source = "./modules/ecs"
}

module "security" {
  source = "./modules/security"
}

module "roles" {
  source = "./modules/roles"
}

module "logs" {
  source = "./modules/logs"
}
