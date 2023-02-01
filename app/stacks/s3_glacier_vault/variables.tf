#SNS TOPIC
variable "sns_topic_name" {
  type = string

}

# GLACIER VAULT
variable "glacier_vault_name" {
  type = string


}
variable "events" {
  type = list(string)

}