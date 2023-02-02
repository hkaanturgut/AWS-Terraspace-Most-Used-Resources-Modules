module "sns_topic" {
  source         = "../../modules/sns_topic"
  sns_topic_name = var.sns_topic_name

}

module "s3_glacier_vault" {
  source             = "../../modules/s3_glacier_vault"
  glacier_vault_name = var.glacier_vault_name
  sns_topic          = module.sns_topic.arn
  events             = var.events

}