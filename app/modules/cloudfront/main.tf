resource "aws_cloudfront_distribution" "cloudfront_s3_distribution" {
  origin {
    domain_name              = var.domain_name
    origin_access_control_id = var.origin_access_control_id
    origin_id                = var.origin_id
  }

  enabled = var.enabled


  default_cache_behavior {
    allowed_methods  = var.allowed_methods
    cached_methods   = var.cached_methods
    target_origin_id = var.target_origin_id

    forwarded_values {
      query_string = var.query_string

      cookies {
        forward = var.forward
      }
    }
    viewer_protocol_policy = var.viewer_protocol_policy
    min_ttl                = var.min_ttl
    default_ttl            = var.default_ttl
    max_ttl                = var.max_ttl
  }



  restrictions {
    geo_restriction {
      restriction_type = var.restriction_type
      locations        = var.geo_restriction_locations
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = var.cloudfront_default_certificate
  }
}
