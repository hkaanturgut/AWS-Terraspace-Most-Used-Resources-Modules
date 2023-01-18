resource "aws_glacier_vault" "glacier_vault" {
  name = var.glacier_vault_name

  notification {
    sns_topic = var.sns_topic
    events    = var.events
  }
}