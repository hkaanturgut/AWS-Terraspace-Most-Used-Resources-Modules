module "eip" {
  source           = "../../modules/eip"
  vpc              = var.vpc
  public_ipv4_pool = var.public_ipv4_pool

}