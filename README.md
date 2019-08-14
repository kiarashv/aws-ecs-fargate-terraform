# aws-ecs-fargate-terraform
Automate Fargate ECS Infrastructure Setup Using Terraform and Deploy a PHP Docker Image

Variables to edit in variables.tf file
- aws_region (default to ap-southeast-2)
- aws_profile (default to default)
- aws_vpc_cidr_block (default to 10.0.0.0/16)
- az_count (number of availability zones - default to 2)
- app_image (the docker app image default to nimmis/apache-php5)
- app_port (the port that should be exposed by Docker image - default to 80)
- app_count (number of docker containers to run - default to 2)
- fargate_cpu (default to 1vCPU)    
- fargate_memory (default to 2GB)

Commands to run
- terraform init
- terraform plan
- terraform apply