# variables.tf

variable "aws_region" {
  description = "The AWS region the infrastructure will be created in"
  default     = "ap-southeast-2" # Change it to your desired region
}

variable "aws_profile" {
  description = "AWS IAM user profile"
  default = "contino-sandbox"
  # default = "{Add your aws profile name e.g default and uncomment this line}" 
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myAppEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role name"
  default = "myAppEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of AZs to cover in your desired region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "wordpress:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080
}

variable "app_count" {
  description = "Minimum number of docker containers to run"
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
  default     = "512"
}
