resource "aws_nat_gateway" "private_nat_gw" {
  connectivity_type = var.connectivity_type
  subnet_id         = var.private_nat_gw_subnet_id
}