resource "aws_subnet" "subnet" {
  vpc_id     = var.subnet_vpc_id
  cidr_block = var.subnet_cidr_block

  tags = var.subnet_tags
}