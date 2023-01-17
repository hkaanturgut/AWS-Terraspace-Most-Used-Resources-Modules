# module "public_nat_gw" {
#     source = "../../modules/public_nat_gateway"
#     allocation_id= var.allocation_id
#     public_nat_gw_subnet_id=var.public_nat_gw_subnet_id
#     tags=var.tags
#     depends_on=[aws_internet_gateway.example]
  
# }
module "private_nat_gw" {
    source = "../../modules/private_nat_gateway"
    connectivity_type=var.connectivity_type
    private_nat_gw_subnet_id=var.private_nat_gw_subnet_id
  
}
