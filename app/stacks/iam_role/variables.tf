#IAM ROLE
variable "iam_role_name" {
  type = string

}
variable "assume_role_policy" {
  type = any

}

#IAM ROLE POLICY
variable "policy_arn" {
  type = string

}