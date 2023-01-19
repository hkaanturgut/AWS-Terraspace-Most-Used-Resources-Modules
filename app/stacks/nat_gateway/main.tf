
module "private_nat_gw" {
    source = "../../modules/private_nat_gateway"
    connectivity_type=var.connectivity_type
    private_nat_gw_subnet_id=var.private_nat_gw_subnet_id
  
}
