provider "aws" {
  region = "us-east-1"

}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr                   = var.vpc_cidr
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  availability_zones         = var.availability_zones
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  cluster_name               = var.cluster_name

}

module "eks" {
  source = "./modules/eks"

  cluster_name        = var.cluster_name
  subnet_ids          = module.vpc.private_subnets
  cluster_version     = var.cluster_version
  node_instance_types = var.node_instance_types
  desired_size        = var.desired_size
  min_size            = var.min_size
  max_size            = var.max_size
  node_group_name     = var.node_group_name
  capacity_type       = var.capacity_type

}
