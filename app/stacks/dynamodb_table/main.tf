module "dynamodb_table" {
  source              = "../../modules/dynamodb_table"
  dynamodb_table_name = var.dynamodb_table_name
  hash_key            = var.hash_key
  billing_mode        = var.billing_mode
  stream_enabled      = var.stream_enabled
  stream_view_type    = var.stream_view_type
  attribute_name      = var.attribute_name
  attribute_type      = var.attribute_type
  region_name1        = var.region_name1
  region_name2        = var.region_name2

}