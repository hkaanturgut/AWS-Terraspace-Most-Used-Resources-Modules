variable "domain_name" {
    type = string
  
}
variable "origin_access_control_id" {
    type = any
  
}
variable "origin_id" {
    type = string
  
}
variable "enabled" {
    type = bool
  
}
variable "allowed_methods" {
    type = list(string)
  
}
variable "cached_methods" {
    type = list(string)
  
}
variable "target_origin_id" {
    type = any
  
}
variable "viewer_protocol_policy" {
    type = string
  
}
variable "min_ttl" {
    type = number
  
}
variable "default_ttl" {
    type = number
  
}
variable "max_ttl" {
    type = number
  
}

variable "restriction_type" {
    type = string
  
}
variable "geo_restriction_locations" {
    type = list(string)
  
}
variable "cloudfront_default_certificate" {
    type = bool
  
}
variable "query_string" {
    type = bool
  
}
variable "forward" {
  type=string
}
