module "s3_cloudfront" {
  source = "../../modules/s3_bucket"
  bucket = var.bucket
  tags   = var.tags
}

module "cloudfront_origin_access_control" {
  source                            = "../../modules/cloudfront_origin_access_control"
  origin_access_control_name        = var.origin_access_control_name
  origin_access_control_description = var.origin_access_control_description
  origin_access_control_origin_type = var.origin_access_control_origin_type
  signing_behavior                  = var.signing_behavior
  signing_protocol                  = var.signing_protocol
  query_string                      = var.query_string
  forward                           = var.forward


}

module "cloudfront" {
  source                         = "../../modules/cloudfront"
  domain_name                    = module.s3_cloudfront.domain_name
  origin_access_control_id       = module.cloudfront_origin_access_control.id
  origin_id                      = module.s3_cloudfront.id
  enabled                        = var.enabled
  allowed_methods                = var.allowed_methods
  cached_methods                 = var.cached_methods
  target_origin_id               = module.s3_cloudfront.id
  viewer_protocol_policy         = var.viewer_protocol_policy
  min_ttl                        = var.min_ttl
  default_ttl                    = var.default_ttl
  max_ttl                        = var.max_ttl
  restriction_type               = var.restriction_type
  geo_restriction_locations      = var.geo_restriction_locations
  cloudfront_default_certificate = var.cloudfront_default_certificate
  query_string                   = var.query_string
  forward                        = var.forward

}