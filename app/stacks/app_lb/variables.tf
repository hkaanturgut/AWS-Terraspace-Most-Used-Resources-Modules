variable "app_lb_name" {
    type = string
  
}
variable "internal" {
    type = bool
  
}
variable "load_balancer_type" {
    type = string
  
}
# variable "app_lb_subnets" {
#     type = set(string)
  
# }
variable "enable_deletion_protection" {
    type = bool
  
}
variable "app_lb_tags" {
    type = map(any)
  
}