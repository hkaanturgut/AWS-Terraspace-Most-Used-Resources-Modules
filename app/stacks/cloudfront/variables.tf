#S3 BUCKET
variable "bucket" {
    type = string
  
}
variable "tags" {
    type = map
  
}


# Origin Access Control

variable "origin_access_control_name" {
    type = string
  
}

variable "origin_access_control_description" {
    type = string
  
}
variable "origin_access_control_origin_type" {
    type = string
  
}
variable "signing_behavior" {
    type = string
  
}
variable "signing_protocol" {
    type = string
  
}
variable "query_string" {
    type = bool
  
}
variable "forward" {
  type=string
}

# CLOUDFRONT

variable "enabled" {
    type = bool
  
}
variable "allowed_methods" {
    type = list(string)
  
}
variable "cached_methods" {
    type = list(string)
  
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
