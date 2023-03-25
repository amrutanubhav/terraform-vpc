module "vpc" {
  source = "./vendor/modules/vpc" ## source is now changed to this as terrafile is used to pull git repo to local
  VPC_CIDR = var.VPC_CIDR ## calling the variable within module
}

 
