module "vpc" {
  source = "./vpc"
  projectname = var.projectname
  cidr_vpc = var.cidr_vpc
  region = var.region
}