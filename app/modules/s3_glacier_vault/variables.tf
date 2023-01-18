variable "glacier_vault_name" {
    type = string

  
}
variable "sns_topic" {
    type = any
  
}
variable "events" {
    type = list(string)
  
}