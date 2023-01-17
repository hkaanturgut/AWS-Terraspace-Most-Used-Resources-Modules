resource "aws_nat_gateway" "public_nat_gw" {
  allocation_id = var.allocation_id
  subnet_id     = var.public_nat_gw_subnet_id

  tags = var.tags

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = var.depends_on
}
