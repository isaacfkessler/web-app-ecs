variable "region" {
  description = "set the project region"
  default = "us-east-1"
  type = string
}

variable "cidr_vpc" {
  description = "set the vpc cidr"
  default = "10.0.0.0/16"
  type = string
}

variable "projectname" {
  description = "set the project name"
  type = string
}

variable "cluster_name" {
  description = "set the cluster name"
  type = string
}


variable "service_name" {
  type        = string
  description = "ECS service name"
}

variable "task_family" {
  type        = string
  description = "ECS task family"
}

variable "target_group_arn" {
  type        = string
  description = "Load balancer target group arn"
}

variable "container_definitions" {
  type = list(object({
    name           = string
    image          = string
    cpu            = number
    memory         = number
    environment    = map(string)
    secrets        = map(string)
    container_port = number
  }))
  description = "List of container definition assigned to ecs task"
}

variable "network_mode" {
  type        = string
  description = "ECS network mode"
  default     = "awsvpc"
}

variable "launch_type" {
  description = "ECS launch type"
  type = object({
    type   = string
    cpu    = number
    memory = number
  })
  default = {
    type   = "FARGATE"
    cpu    = 256
    memory = 512
  }
}