resource "aws_eip" "byoip-ip" {
  vpc              = var.vpc
  public_ipv4_pool = var.public_ipv4_pool
}