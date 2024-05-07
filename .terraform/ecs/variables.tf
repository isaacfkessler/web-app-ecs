variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  type        = string
  description = "ECS cluster name"
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


variable "vpc_id" {
  type        = string
  description = "VPC id"
  default     = null
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
    type   = "EC2"
    cpu    = null
    memory = null
  }
}

variable "subnets_ids" {
  description = "private subnets ids values"
  type        = list(string)
}

variable "cidr_vpc" {
  description = "set the vpc cidr"
  default     = "10.0.0.0/16"
  type        = string
}

variable "containerport" {
  description = "set the container port"
  type        = number
}