resource "aws_lb" "app_lb" {
  name               = var.app_lb_name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  # subnets            = var.app_lb_subnets

  enable_deletion_protection = var.enable_deletion_protection

  tags = var.app_lb_tags
}