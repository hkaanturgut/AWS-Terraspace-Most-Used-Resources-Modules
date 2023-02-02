module "vpc" {
  source           = "../../modules/vpc"
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy
  tags             = var.tags

}

module "subnet" {
  source            = "../../modules/subnet"
  subnet_vpc_id     = module.vpc.id
  subnet_cidr_block = var.subnet_cidr_block
  subnet_tags       = var.subnet_tags

}

# module "subnet2" {
#     source = "../../modules/subnet"
#     subnet_vpc_id=module.vpc.id
#     subnet_cidr_block=var.subnet2_cidr_block
#     subnet_tags=var.subnet2_tags

# }