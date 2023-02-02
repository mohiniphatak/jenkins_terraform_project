variable "aws_region" {
  type = string
  default = "ap-south-1"
}

variable "env" {
  type = string
  default	= "Test"
}

variable "project_name" {
    type = string
    description = "Project Name"
    default	= "JenkinsTerraform"
}

variable "ecs_task_execution_role_name" {
        description = "ecs task exe role name"
        default = "ecsTaskExecutionRole"
}

variable "s3_bucket_name" {
    type = string
}

# variable "remote_state_key" {
#   type = string
# }
# variable "remote_state_bucket" {
#   type = string
# }
# variable "ecs_cluster_name" {
#   type = string
# }
# variable "ecs_domain_name" {}
# variable "internet_cidr_block" {}

# variable "ecs_service_name" {}
# variable "docker_image_url" {}
# variable "memory" {}
# variable "docker_container_port" {}
# variable "spring_profile" {}
# variable "desired_task_number" {}

