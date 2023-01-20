# Required variables:
app_lb_name                  = "test-lb-tf"
internal                     = false
load_balancer_type           = "application"
enable_deletion_protection   = false
app_lb_tags                  = {
    Environment = "production"
  }

app_lb_subnets             = ["subnet-02c54957bf09bb1b8","subnet-09b0f8eb707352049"]
