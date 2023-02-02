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
#default_cache_behavior
variable "allowed_methods" {
  type = list(string)

}
variable "cached_methods" {
  type = list(string)

}
variable "target_origin_id" {
  type = any

}
#forwarded_values
variable "query_string" {
  type = bool

}
#cookies
variable "forward" {
  type = string
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
#restrictions
variable "restriction_type" {
  type = string

}
variable "geo_restriction_locations" {
  type = list(string)

}
#viewer_certificate
variable "cloudfront_default_certificate" {
  type = bool

}