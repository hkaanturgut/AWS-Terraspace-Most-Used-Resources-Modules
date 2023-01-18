#VPC
variable "cidr_block" {
    type = string
  
}
variable "instance_tenancy" {
    type = string
  
}
variable "tags" {
    type = map(any)
  
}

# Subnet1
variable "subnet_cidr_block" {
    type = string
  
}
variable "subnet_tags" {
    type = map(any)
  
}

# #Subnet2
# variable "subnet2_cidr_block" {
#     type = string
  
# }
# variable "subnet2_tags" {
#     type = map(any)
  
# }


