# variables.tf

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "ap-southeast-2"
}

variable "aws_profile" {
  description = "AWS profile to use when provisioning the app. This is set in the ~/.aws/credentials"
  default = "contino-sandbox"
}

variable "aws_vpc_cidr_block" {
  description = "AWS VPC CIDR IP range"
  default = "10.0.0.0/16"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "myEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "alb_port" {
  description = "Application Load Balancer Port to be called from the Internet"
  default     = 80
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "nimmis/apache-php5"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}