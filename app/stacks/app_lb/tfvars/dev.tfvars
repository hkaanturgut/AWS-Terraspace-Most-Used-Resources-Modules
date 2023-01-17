# Required variables:
app_lb_name                  = "test-lb-tf"
internal                     = false
load_balancer_type           = "application"
enable_deletion_protection   = true
app_lb_tags                  = {
    Environment = "production"
  }

# app_lb_subnets             = <%= output('vpc.subnet_id') %>
