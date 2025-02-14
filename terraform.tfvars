vpc_cidr                   = "10.0.0.0/16"
public_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
availability_zones         = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnet_cidr_blocks = ["10.0.10.0/24", "10.0.20.0/24", "10.0.30.0/24"]
cluster_name               = "my-eks"

#eks variables
cluster_version     = "1.30"
node_instance_types = ["t2.medium"]
desired_size        = 2
min_size            = 1
max_size            = 4
node_group_name     = "my-eks-ng"
capacity_type       = "ON_DEMAND"
