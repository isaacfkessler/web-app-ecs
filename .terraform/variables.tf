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
