variable "eks_cluster_name" {
  type = string

}
variable "eks_cluster_role_arn" {
  type = any

}
variable "subnet_ids" {
  type = set(string)

}