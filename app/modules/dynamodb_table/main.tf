resource "aws_dynamodb_table" "dynamodb_table" {
  name             = var.dynamodb_table_name
  hash_key         = var.hash_key
  billing_mode     = var.billing_mode
  stream_enabled   = var.stream_enabled
  stream_view_type = var.stream_view_type

  attribute {
    name = var.attribute_name
    type = var.attribute_type
  }

  replica {
    region_name = var.region_name1
  }

  replica {
    region_name = var.region_name2
  }
}