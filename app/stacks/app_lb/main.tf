module "app_lb" {
    source = "../../modules/app_lb"
    app_lb_name=var.app_lb_name
    internal=var.internal
    load_balancer_type=var.load_balancer_type
    app_lb_subnets=var.app_lb_subnets
    enable_deletion_protection=var.enable_deletion_protection
    app_lb_tags=var.app_lb_tags
  
}