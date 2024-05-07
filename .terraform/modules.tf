module "vpc" {
  source      = "./vpc"
  projectname = var.projectname
  cidr_vpc    = var.cidr_vpc
  region      = var.region
}

module "ecs" {
  source           = "./ecs"
  cluster_name     = var.cluster_name
  region           = var.region
  service_name     = var.service_name
  task_family      = var.task_family
  target_group_arn = module.alb.arn_target_alb
  vpc_id           = module.vpc.vpc_id
  network_mode     = var.network_mode
  launch_type      = var.launch_type
  subnets_ids      = [module.vpc.subnet_priv_a, module.vpc.subnet_priv_b]
  cidr_vpc         = var.cidr_vpc
  containerport    = var.containerport
}

module "alb" {
  source = "./alb"
  vpc_id = module.vpc.vpc_id
}