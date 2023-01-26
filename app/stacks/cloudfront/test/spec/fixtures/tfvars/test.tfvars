bucket                              = "cloudfront-s3-bucket-deop"
origin_access_control_name          = "example"
origin_access_control_description   = "Example Policy"
origin_access_control_origin_type   = "s3"
signing_behavior                    = "always"
signing_protocol                    = "sigv4"
enabled                             = true
allowed_methods                     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
cached_methods                      = ["GET", "HEAD"]
viewer_protocol_policy              = "allow-all"
query_string                        =false
forward = "none"
min_ttl                             = 0
default_ttl                         = 3600
max_ttl                             = 86400
restriction_type                    = "whitelist"
geo_restriction_locations           = ["US", "CA", "GB", "DE"]
cloudfront_default_certificate      = true
tags= {
    Name = "My bucket"
  }


