# IAM ROLE
variable "iam_for_lambda_name" {
  type = string

}
variable "assume_role_policy" {
  type = any

}

# LAMBDA FUNCTION
variable "filename" {
  type = string

}
variable "function_name" {
  type = string

}
variable "handler" {
  type = string

}
variable "source_code_hash" {
  type = any

}
variable "runtime" {
  type = string

}

